{ src, mkDerivation, base, code-page, containers, deepseq, easytest
, extra, lib, nonempty-containers, random, tasty-bench
, unison-prelude
}:
mkDerivation {
  pname = "unison-util-relation";
  version = "0.0.0";
  src = src;
  libraryHaskellDepends = [
    base containers deepseq extra nonempty-containers unison-prelude
  ];
  testHaskellDepends = [ base code-page easytest random ];
  benchmarkHaskellDepends = [
    base code-page containers random tasty-bench unison-prelude
  ];
  homepage = "https://github.com/unisonweb/unison#readme";
  license = "unknown";
}
