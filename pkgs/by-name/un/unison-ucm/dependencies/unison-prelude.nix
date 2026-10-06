{ src, mkDerivation, base, bytestring, containers, directory, either
, extra, filepath, generic-lens, lens, lib, mtl, pretty-simple
, safe, text, these, transformers, unliftio, vector, witch
, witherable
}:
mkDerivation {
  pname = "unison-prelude";
  version = "0.0.0";
  src = src;
  libraryHaskellDepends = [
    base bytestring containers directory either extra filepath
    generic-lens lens mtl pretty-simple safe text these transformers
    unliftio vector witch witherable
  ];
  homepage = "https://github.com/unisonweb/unison#readme";
  license = "unknown";
}
