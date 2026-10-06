{
  haskell,
  haskellPackages,
  src,
  src-hs-mcp,
}:

let
  localPaths = import ./package-paths.nix;
in
haskellPackages.override {
  overrides = final: prev:
    builtins.mapAttrs (
      name: path:
      haskell.lib.compose.overrideCabal (_: {
        sourceRoot = "source/${path}";
      }) (final.callPackage (./. + "/${name}.nix") { inherit src; })
    ) localPaths
    // {
      fuzzyfind = haskell.lib.markUnbroken (haskell.lib.doJailbreak prev.fuzzyfind);
      lock-file = haskell.lib.doJailbreak prev.lock-file;
      numerals = haskell.lib.dontCheck (haskell.lib.doJailbreak prev.numerals);
      # Upstream's hs-mcp tests do not compile at this revision.
      hs-mcp = haskell.lib.dontCheck (final.callPackage ./hs-mcp.nix { src = src-hs-mcp; });
      avro = haskell.lib.markUnbroken (haskell.lib.doJailbreak prev.avro);
      base32 = haskell.lib.doJailbreak prev.base32;
      data-clist = haskell.lib.doJailbreak prev.data-clist;
      tasty-discover = haskell.lib.doJailbreak prev.tasty-discover;
      unison-cli = haskell.lib.compose.overrideCabal (_: {
        sourceRoot = "source/${localPaths.unison-cli}";
      }) (final.callPackage ./unison-cli.nix {
        inherit src;
        hs-mcp = final.hs-mcp;
      });
      # The process reaping test invokes ps, which is unavailable in its sandbox.
      unison-runtime = haskell.lib.dontCheck (
        haskell.lib.compose.overrideCabal (_: {
          sourceRoot = "source/${localPaths.unison-runtime}";
        }) (final.callPackage ./unison-runtime.nix { inherit src; })
      );
    };
}
