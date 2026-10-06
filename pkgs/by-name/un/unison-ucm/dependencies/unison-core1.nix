{ src, mkDerivation, aeson, base, bytestring, code-page, containers
, crypton, deepseq, easytest, edit-distance, extra, fuzzyfind
, generic-lens, lens, lib, megaparsec, memory, mtl, network-uri
, nonempty-containers, rfc5051, semialign, semigroups
, servant-client, text, text-builder, these, time, transformers
, unison-core, unison-hash, unison-prelude, unison-util-bytes
, unison-util-relation, witch
}:
mkDerivation {
  pname = "unison-core1";
  version = "0.0.0";
  src = src;
  libraryHaskellDepends = [
    aeson base bytestring containers crypton deepseq edit-distance
    extra fuzzyfind generic-lens lens megaparsec memory mtl network-uri
    nonempty-containers rfc5051 semialign semigroups servant-client
    text text-builder these time transformers unison-core unison-hash
    unison-prelude unison-util-bytes unison-util-relation witch
  ];
  testHaskellDepends = [
    base code-page easytest text these unison-core unison-prelude
  ];
  homepage = "https://github.com/unisonweb/unison#readme";
  license = lib.licenses.mit;
}
