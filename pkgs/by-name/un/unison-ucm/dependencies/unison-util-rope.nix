{ src, mkDerivation, base, deepseq, lib }:
mkDerivation {
  pname = "unison-util-rope";
  version = "0.0.0";
  src = src;
  libraryHaskellDepends = [ base deepseq ];
  homepage = "https://github.com/unisonweb/unison#readme";
  license = "unknown";
}
