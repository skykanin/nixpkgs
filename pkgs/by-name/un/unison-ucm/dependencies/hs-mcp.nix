{ src, mkDerivation, aeson, async, base, bytestring, containers, HUnit
, lib, process, stm, temporary, text, unliftio
}:
mkDerivation {
  pname = "hs-mcp";
  version = "0.1.1.0";
  src = src;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson async base bytestring containers process stm text unliftio
  ];
  executableHaskellDepends = [ aeson base containers text ];
  testHaskellDepends = [
    aeson base bytestring containers HUnit stm temporary text
  ];
  homepage = "https://github.com/ChrisPenner/hs-mcp";
  description = "Library with tools for creating an MCP server implementation";
  license = lib.licenses.bsd3;
}
