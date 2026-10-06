{ src, mkDerivation, base, lib, unix }:
mkDerivation {
  pname = "unison-dynlib";
  version = "0.0.0";
  src = src;
  libraryHaskellDepends = [ base unix ];
  homepage = "https://github.com/unisonweb/unison#readme";
  license = lib.licenses.mit;
}
