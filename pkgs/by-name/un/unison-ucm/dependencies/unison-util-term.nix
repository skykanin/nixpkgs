{ src, mkDerivation, base, containers, lib, mtl, unison-codebase
, unison-core
}:
mkDerivation {
  pname = "unison-util-term";
  version = "0.0.0";
  src = src;
  libraryHaskellDepends = [
    base containers mtl unison-codebase unison-core
  ];
  homepage = "https://github.com/unisonweb/unison#readme";
  license = "unknown";
}
