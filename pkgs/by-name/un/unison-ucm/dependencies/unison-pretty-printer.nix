{ src, mkDerivation, ansi-terminal, base, code-page, containers
, easytest, extra, lib, ListLike, pretty-simple, process
, raw-strings-qq, terminal-size, text, unison-core1, unison-prelude
, unison-syntax, unliftio
}:
mkDerivation {
  pname = "unison-pretty-printer";
  version = "0.0.0";
  src = src;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    ansi-terminal base containers extra ListLike pretty-simple process
    terminal-size text unison-core1 unison-prelude unison-syntax
    unliftio
  ];
  executableHaskellDepends = [ base text ];
  testHaskellDepends = [
    base code-page containers easytest raw-strings-qq text
    unison-syntax
  ];
  homepage = "https://github.com/unisonweb/unison#readme";
  license = lib.licenses.mit;
  mainProgram = "prettyprintdemo";
}
