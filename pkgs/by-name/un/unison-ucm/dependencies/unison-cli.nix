{ src, mkDerivation, aeson, aeson-pretty, algebraic-graphs
, ansi-terminal, attoparsec, base, bytestring, cmark, co-log-core
, code-page, concurrent-output, conduit, conduit-extra, containers
, crypton, Diff, directory, easytest, either, errors, extra
, filepath, free, friendly-time, frontmatter, fsnotify
, generic-lens, github, haskeline, here, hs-mcp, http-client
, http-client-tls, http-types, IntervalMap, ki, lens, lib, ListLike
, lsp, lsp-types, megaparsec, memory, mtl, network, network-simple
, network-uri, nonempty-containers, numerals, open-browser
, optparse-applicative, pretty-simple, process, random-shuffle
, raw-strings-qq, recover-rtti, semialign, serialise, servant
, servant-client, servant-conduit, silently, stm, stm-chans
, temporary, text, text-ansi, text-builder, text-rope, these, time
, transformers, unison-codebase, unison-codebase-sqlite
, unison-codebase-sqlite-hashing-v2, unison-core, unison-core1
, unison-credentials, unison-hash, unison-hashing-v2, unison-merge
, unison-parser-typechecker, unison-prelude, unison-pretty-printer
, unison-runtime, unison-share-api, unison-share-projects-api
, unison-sqlite, unison-syntax, unison-util-base32hex
, unison-util-diff3, unison-util-file-embed, unison-util-recursion
, unison-util-relation, unix, unliftio, uuid, vector, wai, warp
, witch, witherable
}:
mkDerivation {
  pname = "unison-cli";
  version = "0.0.0";
  src = src;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson aeson-pretty algebraic-graphs ansi-terminal attoparsec base
    bytestring cmark co-log-core code-page concurrent-output conduit
    conduit-extra containers crypton Diff directory either errors extra
    filepath free friendly-time frontmatter fsnotify generic-lens
    github haskeline hs-mcp http-client http-client-tls http-types
    IntervalMap ki lens ListLike lsp lsp-types megaparsec memory mtl
    network network-simple network-uri nonempty-containers numerals
    open-browser optparse-applicative pretty-simple process
    random-shuffle raw-strings-qq recover-rtti semialign serialise
    servant servant-client servant-conduit stm stm-chans temporary text
    text-ansi text-builder text-rope these time transformers
    unison-codebase unison-codebase-sqlite
    unison-codebase-sqlite-hashing-v2 unison-core unison-core1
    unison-credentials unison-hash unison-hashing-v2 unison-merge
    unison-parser-typechecker unison-prelude unison-pretty-printer
    unison-runtime unison-share-api unison-share-projects-api
    unison-sqlite unison-syntax unison-util-base32hex unison-util-diff3
    unison-util-file-embed unison-util-recursion unison-util-relation
    unix unliftio uuid vector wai warp witch witherable
  ];
  executableHaskellDepends = [
    base bytestring code-page directory easytest filepath megaparsec
    silently text unison-parser-typechecker unison-prelude unliftio
  ];
  testHaskellDepends = [
    base code-page containers crypton directory easytest extra here
    lens lsp lsp-types megaparsec mtl temporary text these unison-core
    unison-core1 unison-parser-typechecker unison-prelude
    unison-pretty-printer unison-syntax unison-util-recursion unliftio
  ];
  homepage = "https://github.com/unisonweb/unison#readme";
  license = lib.licenses.mit;
  mainProgram = "transcripts";
}
