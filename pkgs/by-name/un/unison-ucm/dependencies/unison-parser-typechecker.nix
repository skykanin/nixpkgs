{ src, mkDerivation, aeson, async, atomic-primops, base, bytes
, bytestring, code-page, concurrent-output, containers, easytest
, errors, extra, filelock, filepath, fingertree, free, generic-lens
, hashable, hashtables, lens, lib, ListLike, megaparsec, mmorph
, mtl, murmur-hash, mutable-containers, nonempty-containers
, pretty-simple, raw-strings-qq, regex-tdfa, semialign, stm
, temporary, text, these, time, transformers, unicode-show
, unison-codebase, unison-codebase-sqlite
, unison-codebase-sqlite-hashing-v2, unison-codebase-sync
, unison-core, unison-core1, unison-credentials, unison-hash
, unison-hashing-v2, unison-prelude, unison-pretty-printer
, unison-sqlite, unison-syntax, unison-util-base32hex
, unison-util-bytes, unison-util-cache, unison-util-recursion
, unison-util-relation, unison-util-rope, unison-util-serialization
, unliftio, uuid, vector, witherable
}:
mkDerivation {
  pname = "unison-parser-typechecker";
  version = "0.0.0";
  src = src;
  libraryHaskellDepends = [
    aeson async atomic-primops base bytes bytestring concurrent-output
    containers errors extra filelock filepath fingertree free
    generic-lens hashable hashtables lens ListLike megaparsec mmorph
    mtl murmur-hash mutable-containers nonempty-containers
    pretty-simple regex-tdfa semialign stm text these time transformers
    unicode-show unison-codebase unison-codebase-sqlite
    unison-codebase-sqlite-hashing-v2 unison-codebase-sync unison-core
    unison-core1 unison-credentials unison-hash unison-hashing-v2
    unison-prelude unison-pretty-printer unison-sqlite unison-syntax
    unison-util-base32hex unison-util-bytes unison-util-cache
    unison-util-recursion unison-util-relation unison-util-rope
    unison-util-serialization unliftio uuid vector witherable
  ];
  testHaskellDepends = [
    base code-page containers easytest megaparsec mtl raw-strings-qq
    temporary text unison-core unison-core1 unison-hash
    unison-hashing-v2 unison-prelude unison-pretty-printer
    unison-syntax unison-util-relation unison-util-rope
  ];
  homepage = "https://github.com/unisonweb/unison#readme";
  license = lib.licenses.mit;
}
