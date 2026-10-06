{ src, mkDerivation, base, lib, shellmet, template-haskell, text
, unison-cli
}:
mkDerivation {
  pname = "unison-cli-main";
  version = "0.0.0";
  src = src;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    base shellmet template-haskell text unison-cli
  ];
  homepage = "https://github.com/unisonweb/unison#readme";
  license = lib.licenses.mit;
  mainProgram = "unison";
}
