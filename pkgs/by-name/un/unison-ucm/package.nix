{
  lib,
  fetchFromGitHub,
  haskell,
  haskellPackages,
  less,
  makeWrapper,
}:

let
  version = "1.5.0";
  src = fetchFromGitHub {
    owner = "unisonweb";
    repo = "unison";
    tag = "release/${version}";
    hash = "sha256-AcnPXBqSl3oU0GfXglYwATkvVPnym2Y00PyQDQZ/WNU=";
  };
  hsMcpSrc = fetchFromGitHub {
    owner = "ChrisPenner";
    repo = "hs-mcp";
    rev = "d8564c70ca09e333b7ce1717d1ac97a62d62966c";
    hash = "sha256-NEYHyhMYefp2XuCdQmkBpSbpyXC7Sq5ldiHELtc9YgQ=";
  };
  packages = import ./dependencies/local-packages.nix {
    inherit haskell haskellPackages src;
    src-hs-mcp = hsMcpSrc;
  };
in
(haskell.lib.compose.overrideCabal (old: {
  pname = "unison-ucm";
  inherit version;
  doCheck = false;
  doHaddock = false;
  description = "Modern, statically-typed purely functional language";
  homepage = "https://www.unison-lang.org/";
  license = with lib.licenses; [
    mit
    bsd3
  ];
  mainProgram = "ucm";
  passthru = {
    updateScript = ./update.py;
    inherit hsMcpSrc;
  };
  maintainers = with lib.maintainers; [
    ceedubs
    sellout
    skykanin
    virusdave
  ];
  postPatch = (old.postPatch or "") + ''
    substituteInPlace unison/Version.hs \
      --replace-fail 'tag <- getTag $? pure "unknown"' 'tag <- getTag $? pure "release/${version}"' \
      --replace-fail 'let formatDate d = " (built on " <> d <> ")"' 'let formatDate d = if Text.null d then "" else " (built on " <> d <> ")"'
  '';
  postInstall = (old.postInstall or "") + ''
    mv $out/bin/unison $out/bin/ucm
    wrapProgram $out/bin/ucm --prefix PATH : ${lib.makeBinPath [ less ]}
  '';
}) packages.unison-cli-main).overrideAttrs
  (old: {
    nativeBuildInputs = (old.nativeBuildInputs or [ ]) ++ [ makeWrapper ];
    meta = old.meta // {
      sourceProvenance = [ lib.sourceTypes.fromSource ];
    };
  })
