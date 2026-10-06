#!/usr/bin/env nix-shell
#!nix-shell -i python3 -p python3 cabal2nix-unwrapped

"""Update the Unison release and regenerate its Cabal expressions."""

import argparse
import json
import pathlib
import re
import subprocess
import urllib.request


root = pathlib.Path(__file__).resolve().parent
dependencies = root / "dependencies"


def nix_source(attribute: str) -> pathlib.Path:
    """Build a pinned Nix source and return its store path."""
    return pathlib.Path(
        subprocess.check_output(
            ["nix-build", "--no-out-link", "-A", attribute], cwd=root.parents[3], text=True
        ).strip()
    )


def generate(name: str, directory: pathlib.Path) -> str:
    """Generate a Cabal expression with its source passed in by Nix."""
    generated = subprocess.check_output(
        ["cabal2nix", "--no-hpack", "--src-expression", "src", str(directory)], text=True
    )
    if generated.count("src = src;") != 1 or not generated.startswith("{ mkDerivation,"):
        raise ValueError(f"unexpected cabal2nix output for {name}")
    generated = generated.replace("{ mkDerivation,", "{ src, mkDerivation,", 1)
    return generated


def release_version(requested: str | None) -> str:
    """Use the requested version, or look up the latest GitHub release."""
    if requested is None:
        with urllib.request.urlopen("https://api.github.com/repos/unisonweb/unison/releases/latest") as response:
            requested = json.load(response)["tag_name"]
    version = requested.removeprefix("release/")
    if not re.fullmatch(r"[0-9]+(?:\.[0-9]+)+", version):
        raise ValueError(f"invalid release version: {version}")
    return version


def unison_source(version: str, current_version: str, current_hash: str) -> tuple[pathlib.Path, str]:
    """Reuse the pinned source, or prefetch a different release and its hash."""
    if version == current_version:
        return nix_source("unison-ucm.src"), current_hash

    url = f"https://github.com/unisonweb/unison/archive/refs/tags/release/{version}.tar.gz"
    hash, source = subprocess.check_output(
        ["nix-prefetch-url", "--unpack", "--print-path", url], text=True
    ).splitlines()
    hash = subprocess.check_output(["nix", "hash", "to-sri", "--type", "sha256", hash], text=True).strip()
    return pathlib.Path(source), hash


def local_packages(source: pathlib.Path) -> dict[str, str]:
    """Read local package paths and names from the release's Stack project."""
    stack = (source / "stack.yaml").read_text().split("packages:\n", 1)[1].split("\nextra-deps:", 1)[0]
    paths = [line.strip().removeprefix("- ") for line in stack.splitlines() if line.strip().startswith("- ")]
    if not paths:
        raise ValueError("no local packages in stack.yaml")

    packages: dict[str, str] = {}
    for path in paths:
        cabal_files = list((source / path).glob("*.cabal"))
        if len(cabal_files) != 1:
            raise ValueError(f"expected one Cabal file in {path}")
        name = cabal_files[0].stem
        if name in packages:
            raise ValueError(f"duplicate package: {name}")
        packages[name] = path
    return packages


def generate_local_packages(source: pathlib.Path, packages: dict[str, str]) -> dict[str, str]:
    """Generate only the local packages needed by unison-cli-main, including their tests."""
    generated: dict[str, str] = {}
    pending = ["unison-cli-main"]
    while pending:
        name = pending.pop()
        if name in generated:
            continue
        expression = generate(name, source / packages[name])
        generated[name] = expression
        for depends in re.findall(r"\b\w+Depends\s*=\s*\[([^]]*)\]", expression, re.DOTALL):
            pending.extend(set(depends.split()) & packages.keys() - generated.keys())
    return generated


def main() -> None:
    """Update the release pin and regenerate all checked-in Cabal expressions."""
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("version", nargs="?", help="release version (defaults to the latest GitHub release)")
    args = parser.parse_args()

    package_file = root / "package.nix"
    package = package_file.read_text()
    version_match = re.search(r'^  version = "([^"]+)";$', package, re.MULTILINE)
    hash_match = re.search(r'^    hash = "([^"]+)";$', package, re.MULTILINE)
    if not version_match or not hash_match:
        raise ValueError("could not find the current Unison version or source hash")

    version = release_version(args.version)
    source, hash = unison_source(version, version_match.group(1), hash_match.group(1))
    all_packages = local_packages(source)
    generated_files = generate_local_packages(source, all_packages)
    packages = {name: all_packages[name] for name in generated_files}
    generated_files["hs-mcp"] = generate("hs-mcp", nix_source("unison-ucm.passthru.hsMcpSrc"))

    # Drop only expressions belonging to local packages that are no longer needed.
    for name in all_packages.keys() - packages.keys():
        (dependencies / f"{name}.nix").unlink(missing_ok=True)
    for name, contents in generated_files.items():
        (dependencies / f"{name}.nix").write_text(contents)
    (dependencies / "package-paths.nix").write_text(
        "# Generated by ../update.py from the pinned source's stack.yaml.\n"
        "{\n"
        + "".join(f'  {name} = "{path}";\n' for name, path in sorted(packages.items()))
        + "}\n"
    )
    package_file.write_text(
        package[: version_match.start(1)]
        + version
        + package[version_match.end(1) : hash_match.start(1)]
        + hash
        + package[hash_match.end(1) :]
    )


if __name__ == "__main__":
    main()
