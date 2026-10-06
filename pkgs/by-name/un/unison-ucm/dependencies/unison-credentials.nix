{ src, mkDerivation, aeson, base, base64-bytestring, bytestring
, containers, crypton, exceptions, filepath, jose, lens, lib
, lock-file, memory, mtl, network-uri, text, time, transformers
, unison-core1, unison-prelude, unliftio
}:
mkDerivation {
  pname = "unison-credentials";
  version = "0.0.0";
  src = src;
  libraryHaskellDepends = [
    aeson base base64-bytestring bytestring containers crypton
    exceptions filepath jose lens lock-file memory mtl network-uri text
    time transformers unison-core1 unison-prelude unliftio
  ];
  homepage = "https://github.com/unisonweb/unison#readme";
  license = "unknown";
}
