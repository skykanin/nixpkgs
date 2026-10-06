{ src, mkDerivation, base, bytestring, cborg, containers, crypton, lens
, lib, memory, semialign, text, time, unison-core1, unison-hash
, unison-hashing, unison-prelude, unison-util-bytes
, unison-util-relation
}:
mkDerivation {
  pname = "unison-hashing-v2";
  version = "0.0.0";
  src = src;
  libraryHaskellDepends = [
    base bytestring cborg containers crypton lens memory semialign text
    time unison-core1 unison-hash unison-hashing unison-prelude
    unison-util-bytes unison-util-relation
  ];
  homepage = "https://github.com/unisonweb/unison#readme";
  license = "unknown";
}
