{ src, mkDerivation, aeson, base, binary, bytes, bytestring, cborg
, code-page, conduit, containers, Diff, directory, easytest, errors
, extra, filepath, fuzzyfind, hedgehog, hs-mcp, http-media
, http-types, ki-unlifted, lens, lib, lucid, memory, mtl, network
, nonempty-containers, openapi3, raw-strings-qq, regex-tdfa
, serialise, servant, servant-docs, servant-openapi3
, servant-server, servant-websockets, stm-chans, text, time
, transformers, unison-codebase, unison-codebase-sqlite
, unison-codebase-sqlite-hashing-v2, unison-core, unison-core1
, unison-hash, unison-hash-orphans-aeson, unison-hashing-v2
, unison-parser-typechecker, unison-prelude, unison-pretty-printer
, unison-runtime, unison-share-projects-api, unison-sqlite
, unison-syntax, unison-util-base32hex, unison-util-recursion
, unison-util-relation, unliftio, uri-encode, utf8-string, vector
, wai, wai-cors, warp, websockets, wuss, yaml
}:
mkDerivation {
  pname = "unison-share-api";
  version = "0.0.0";
  src = src;
  libraryHaskellDepends = [
    aeson base binary bytes bytestring cborg conduit containers Diff
    directory errors extra filepath fuzzyfind hs-mcp http-media
    http-types ki-unlifted lens lucid memory mtl network
    nonempty-containers openapi3 regex-tdfa serialise servant
    servant-docs servant-openapi3 servant-server servant-websockets
    stm-chans text time transformers unison-codebase
    unison-codebase-sqlite unison-codebase-sqlite-hashing-v2
    unison-core unison-core1 unison-hash unison-hash-orphans-aeson
    unison-hashing-v2 unison-parser-typechecker unison-prelude
    unison-pretty-printer unison-runtime unison-share-projects-api
    unison-sqlite unison-syntax unison-util-base32hex
    unison-util-recursion unison-util-relation unliftio uri-encode
    utf8-string vector wai wai-cors warp websockets wuss yaml
  ];
  testHaskellDepends = [
    base bytestring code-page easytest hedgehog raw-strings-qq
    serialise text unison-codebase-sqlite unison-hash unison-prelude
    unison-pretty-printer vector
  ];
  homepage = "https://github.com/unisonweb/unison#readme";
  license = "unknown";
}
