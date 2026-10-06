{ src, mkDerivation, base, code-page, containers, direct-sqlite
, easytest, lib, megaparsec, pretty-simple, random, recover-rtti
, sqlite-simple, template-haskell, text, text-builder, transformers
, unison-prelude, unison-util-cache, unliftio
}:
mkDerivation {
  pname = "unison-sqlite";
  version = "0.0.0";
  src = src;
  libraryHaskellDepends = [
    base containers direct-sqlite megaparsec pretty-simple random
    recover-rtti sqlite-simple template-haskell text text-builder
    transformers unison-prelude unison-util-cache unliftio
  ];
  testHaskellDepends = [ base code-page easytest ];
  homepage = "https://github.com/unisonweb/unison#readme";
  license = "unknown";
}
