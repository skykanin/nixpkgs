{ src, mkDerivation, base, lib }:
mkDerivation {
  pname = "unison-codebase-sync";
  version = "0.0.0";
  src = src;
  libraryHaskellDepends = [ base ];
  homepage = "https://github.com/unisonweb/unison#readme";
  license = "unknown";
}
