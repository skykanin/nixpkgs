{ src, mkDerivation, base, containers, free, lib }:
mkDerivation {
  pname = "unison-util-recursion";
  version = "0.0.0";
  src = src;
  libraryHaskellDepends = [ base containers free ];
  homepage = "https://github.com/unisonweb/unison#readme";
  license = "unknown";
}
