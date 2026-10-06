{ src, mkDerivation, aeson, base, lib, text, unison-hash
, unison-util-base32hex
}:
mkDerivation {
  pname = "unison-hash-orphans-aeson";
  version = "0.0.0";
  src = src;
  libraryHaskellDepends = [
    aeson base text unison-hash unison-util-base32hex
  ];
  homepage = "https://github.com/unisonweb/unison#readme";
  license = "unknown";
}
