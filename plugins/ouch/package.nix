{ lib, stdenv, fetchFromGitHub, }:

stdenv.mkDerivation {
  pname = "yaziPlugins-ouch";
  version = "unstable-2025-04-03";

  src = fetchFromGitHub {
    owner = "ndtoan96";
    repo = "ouch.yazi";
    rev = "558188d2479d73cafb7ad8fb1bee12b2b59fb607";
    hash = "sha256-oUEUGgeVbljQICB43v9DeEM3XWMAKt3Ll11IcLCS/PA=";
  };

  buildPhase = ''
    mkdir $out
    cp $src/* $out
  '';

  meta = with lib; {
    description = "A Yazi plugin to preview archives";
    homepage = "https://github.com/ndtoan96/ouch.yazi";
    license = licenses.mit;
    maintainers = [ ];
    platforms = platforms.all;
  };
}
