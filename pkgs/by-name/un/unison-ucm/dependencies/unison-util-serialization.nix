{ src, mkDerivation, base, bytes, bytestring, containers, filepath, lib
, text, text-short, unliftio, vector
}:
mkDerivation {
  pname = "unison-util-serialization";
  version = "0.0.0";
  src = src;
  libraryHaskellDepends = [
    base bytes bytestring containers filepath text text-short unliftio
    vector
  ];
  license = "unknown";
}
