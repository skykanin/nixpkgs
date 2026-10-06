{ src, mkDerivation, async, base, code-page, containers, easytest, lib
, stm, unliftio
}:
mkDerivation {
  pname = "unison-util-cache";
  version = "0.0.0";
  src = src;
  libraryHaskellDepends = [ base containers unliftio ];
  testHaskellDepends = [ async base code-page easytest stm ];
  homepage = "https://github.com/unisonweb/unison#readme";
  license = "unknown";
}
