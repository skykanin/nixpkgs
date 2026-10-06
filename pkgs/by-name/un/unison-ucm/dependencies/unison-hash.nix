{ src, mkDerivation, base, bytestring, deepseq, lib, unison-prelude
, unison-util-base32hex
}:
mkDerivation {
  pname = "unison-hash";
  version = "0.0.0";
  src = src;
  libraryHaskellDepends = [
    base bytestring deepseq unison-prelude unison-util-base32hex
  ];
  homepage = "https://github.com/unisonweb/unison#readme";
  license = "unknown";
}
