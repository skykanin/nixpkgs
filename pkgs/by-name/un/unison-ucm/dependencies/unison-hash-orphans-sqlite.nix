{ src, mkDerivation, base, lib, sqlite-simple, text, unison-hash
, unison-util-base32hex
}:
mkDerivation {
  pname = "unison-hash-orphans-sqlite";
  version = "0.0.0";
  src = src;
  libraryHaskellDepends = [
    base sqlite-simple text unison-hash unison-util-base32hex
  ];
  homepage = "https://github.com/unisonweb/unison#readme";
  license = "unknown";
}
