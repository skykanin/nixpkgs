{ src, mkDerivation, base, lib, unison-hash }:
mkDerivation {
  pname = "unison-hashing";
  version = "0.0.0";
  src = src;
  libraryHaskellDepends = [ base unison-hash ];
  homepage = "https://github.com/unisonweb/unison#readme";
  license = "unknown";
}
