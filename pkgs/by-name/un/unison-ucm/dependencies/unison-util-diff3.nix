{ src, mkDerivation, base, containers, Diff, directory, filepath, lib
, text, unison-prelude
}:
mkDerivation {
  pname = "unison-util-diff3";
  version = "0.0.0";
  src = src;
  libraryHaskellDepends = [ base Diff ];
  testHaskellDepends = [
    base containers directory filepath text unison-prelude
  ];
  homepage = "https://github.com/unisonweb/unison#readme";
  license = "unknown";
}
