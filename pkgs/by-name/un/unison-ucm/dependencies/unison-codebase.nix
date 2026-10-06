{ src, mkDerivation, base, containers, generic-lens, lens, lib, mtl
, time, unison-core, unison-hash, unison-prelude, unison-util-bytes
, unison-util-recursion
}:
mkDerivation {
  pname = "unison-codebase";
  version = "0.0.0";
  src = src;
  libraryHaskellDepends = [
    base containers generic-lens lens mtl time unison-core unison-hash
    unison-prelude unison-util-bytes unison-util-recursion
  ];
  homepage = "https://github.com/unisonweb/unison#readme";
  license = "unknown";
}
