{ src, mkDerivation, base, containers, deepseq, lens, lib
, nonempty-containers, semialign, semigroups, text, these
, transformers, unison-core, unison-core1, unison-hash
, unison-parser-typechecker, unison-prelude, unison-pretty-printer
, unison-syntax, unison-util-bytes, unison-util-relation, witch
, witherable
}:
mkDerivation {
  pname = "unison-merge";
  version = "0.0.0";
  src = src;
  libraryHaskellDepends = [
    base containers deepseq lens nonempty-containers semialign
    semigroups text these transformers unison-core unison-core1
    unison-hash unison-parser-typechecker unison-prelude
    unison-pretty-printer unison-syntax unison-util-bytes
    unison-util-relation witch witherable
  ];
  homepage = "https://github.com/unisonweb/unison#readme";
  license = "unknown";
}
