{ src, mkDerivation, base, containers, deepseq, lens, lib, mtl
, recover-rtti, rfc5051, text, unison-hash, unison-prelude
, unison-util-recursion
}:
mkDerivation {
  pname = "unison-core";
  version = "0.0.0";
  src = src;
  libraryHaskellDepends = [
    base containers deepseq lens mtl recover-rtti rfc5051 text
    unison-hash unison-prelude unison-util-recursion
  ];
  homepage = "https://github.com/unisonweb/unison#readme";
  license = "unknown";
}
