{ src, mkDerivation, base, basement, bytestring, code-page, deepseq
, easytest, lib, memory, murmur-hash, primitive, stringsearch, text
, unison-prelude, unison-util-rope, zlib, zstd
}:
mkDerivation {
  pname = "unison-util-bytes";
  version = "0.0.0";
  src = src;
  libraryHaskellDepends = [
    base basement bytestring deepseq memory murmur-hash primitive
    stringsearch text unison-prelude unison-util-rope zlib zstd
  ];
  testHaskellDepends = [
    base bytestring code-page easytest unison-prelude
  ];
  homepage = "https://github.com/unisonweb/unison#readme";
  license = "unknown";
}
