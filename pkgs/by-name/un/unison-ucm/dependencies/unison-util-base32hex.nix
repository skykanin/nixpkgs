{ src, mkDerivation, base, base32, containers, lib, text, unison-prelude
}:
mkDerivation {
  pname = "unison-util-base32hex";
  version = "0.0.0";
  src = src;
  libraryHaskellDepends = [
    base base32 containers text unison-prelude
  ];
  homepage = "https://github.com/unisonweb/unison#readme";
  license = "unknown";
}
