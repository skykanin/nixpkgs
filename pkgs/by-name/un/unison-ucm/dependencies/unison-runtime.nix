{ src, mkDerivation, asn1-encoding, asn1-types, atomic-primops, avro
, base, binary, bytes, bytestring, clock, code-page, containers
, crypton, crypton-x509, crypton-x509-store, crypton-x509-system
, crypton-x509-validation, data-default, data-memocombinators
, deepseq, directory, easytest, exceptions, filemanip, filepath
, hashable, hedgehog, hex-text, inspection-testing, iproute, lens
, lib, libffi, megaparsec, memory, mmorph, mtl, murmur-hash
, network, network-simple, network-udp, pem, primitive, process
, raw-strings-qq, safe-exceptions, stm, tagged, template-haskell
, temporary, text, time, tls, unison-codebase-sqlite, unison-core
, unison-core1, unison-dynlib, unison-hash
, unison-parser-typechecker, unison-prelude, unison-pretty-printer
, unison-syntax, unison-util-bytes, unison-util-recursion, unix
, unliftio, unordered-containers, vector
}:
mkDerivation {
  pname = "unison-runtime";
  version = "0.0.0";
  src = src;
  libraryHaskellDepends = [
    asn1-encoding asn1-types atomic-primops avro base binary bytes
    bytestring clock containers crypton crypton-x509 crypton-x509-store
    crypton-x509-system crypton-x509-validation data-default
    data-memocombinators deepseq directory exceptions filepath hashable
    inspection-testing iproute lens libffi memory mmorph mtl
    murmur-hash network network-simple network-udp pem primitive
    process raw-strings-qq safe-exceptions stm tagged template-haskell
    temporary text time tls unison-codebase-sqlite unison-core
    unison-core1 unison-dynlib unison-hash unison-parser-typechecker
    unison-prelude unison-pretty-printer unison-syntax
    unison-util-bytes unison-util-recursion unix unliftio
    unordered-containers vector
  ];
  testHaskellDepends = [
    base bytestring code-page containers crypton directory easytest
    filemanip filepath hedgehog hex-text lens megaparsec mtl primitive
    process stm text unison-core1 unison-hash unison-parser-typechecker
    unison-prelude unison-pretty-printer unison-syntax
    unison-util-bytes unix
  ];
  homepage = "https://github.com/unisonweb/unison#readme";
  license = lib.licenses.mit;
}
