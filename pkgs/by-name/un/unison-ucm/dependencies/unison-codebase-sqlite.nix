{ src, mkDerivation, aeson, base, bytes, bytestring, containers, extra
, generic-lens, lens, lib, mtl, network-uri
, network-uri-orphans-sqlite, nonempty-containers, text, time
, transformers, unison-codebase, unison-core
, unison-core-orphans-sqlite, unison-core1, unison-hash
, unison-hash-orphans-sqlite, unison-prelude, unison-sqlite
, unison-util-base32hex, unison-util-bytes, unison-util-file-embed
, unison-util-serialization, unison-util-term, unliftio, uuid
, uuid-orphans-sqlite, vector
}:
mkDerivation {
  pname = "unison-codebase-sqlite";
  version = "0.0.0";
  src = src;
  libraryHaskellDepends = [
    aeson base bytes bytestring containers extra generic-lens lens mtl
    network-uri network-uri-orphans-sqlite nonempty-containers text
    time transformers unison-codebase unison-core
    unison-core-orphans-sqlite unison-core1 unison-hash
    unison-hash-orphans-sqlite unison-prelude unison-sqlite
    unison-util-base32hex unison-util-bytes unison-util-file-embed
    unison-util-serialization unison-util-term unliftio uuid
    uuid-orphans-sqlite vector
  ];
  homepage = "https://github.com/unisonweb/unison#readme";
  license = "unknown";
}
