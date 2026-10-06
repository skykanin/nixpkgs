{ src, mkDerivation, base, containers, lens, lib, text, unison-codebase
, unison-codebase-sqlite, unison-core, unison-core1, unison-hash
, unison-hashing-v2, unison-prelude, unison-syntax
, unison-util-term
}:
mkDerivation {
  pname = "unison-codebase-sqlite-hashing-v2";
  version = "0.0.0";
  src = src;
  libraryHaskellDepends = [
    base containers lens text unison-codebase unison-codebase-sqlite
    unison-core unison-core1 unison-hash unison-hashing-v2
    unison-prelude unison-syntax unison-util-term
  ];
  homepage = "https://github.com/unisonweb/unison#readme";
  license = "unknown";
}
