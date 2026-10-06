{ src, mkDerivation, base, file-embed, lib, template-haskell }:
mkDerivation {
  pname = "unison-util-file-embed";
  version = "0.0.0";
  src = src;
  libraryHaskellDepends = [ base file-embed template-haskell ];
  homepage = "https://github.com/unisonweb/unison#readme";
  license = "unknown";
}
