{ src, mkDerivation, async, base, containers, exceptions, lib, mtl
, random, stm
}:
mkDerivation {
  pname = "easytest";
  version = "0.1";
  src = src;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    async base containers exceptions mtl random stm
  ];
  executableHaskellDepends = [ base ];
  testHaskellDepends = [ base ];
  homepage = "http://unison-lang.org";
  description = "Simple, expressive testing library";
  license = lib.meta.getLicenseFromSpdxId "MIT";
  mainProgram = "runtests";
}
