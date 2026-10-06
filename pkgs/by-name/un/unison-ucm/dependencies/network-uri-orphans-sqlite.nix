{ src, mkDerivation, base, lib, network-uri, sqlite-simple }:
mkDerivation {
  pname = "network-uri-orphans-sqlite";
  version = "0.0.0";
  src = src;
  libraryHaskellDepends = [ base network-uri sqlite-simple ];
  homepage = "https://github.com/unisonweb/unison#readme";
  license = "unknown";
}
