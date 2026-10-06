{ src, mkDerivation, aeson, base, bytestring, jose, lens, lib, memory
, servant, servant-auth, text, unison-hash
, unison-hash-orphans-aeson, unison-prelude
}:
mkDerivation {
  pname = "unison-share-projects-api";
  version = "0.0.0";
  src = src;
  libraryHaskellDepends = [
    aeson base bytestring jose lens memory servant servant-auth text
    unison-hash unison-hash-orphans-aeson unison-prelude
  ];
  homepage = "https://github.com/unisonweb/unison#readme";
  license = "unknown";
}
