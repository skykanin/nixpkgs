{ src, mkDerivation, base, bytes, code-page, containers, crypton
, deriving-compat, easytest, extra, free, lens, lib, megaparsec
, mtl, parser-combinators, text, unison-core, unison-core1
, unison-hash, unison-prelude, unison-util-base32hex
, unison-util-bytes, unison-util-recursion
}:
mkDerivation {
  pname = "unison-syntax";
  version = "0.0.0";
  src = src;
  libraryHaskellDepends = [
    base bytes containers crypton deriving-compat extra free lens
    megaparsec mtl parser-combinators text unison-core unison-core1
    unison-hash unison-prelude unison-util-base32hex unison-util-bytes
  ];
  testHaskellDepends = [
    base code-page easytest free megaparsec text unison-core1
    unison-prelude unison-util-bytes unison-util-recursion
  ];
  homepage = "https://github.com/unisonweb/unison#readme";
  license = "unknown";
}
