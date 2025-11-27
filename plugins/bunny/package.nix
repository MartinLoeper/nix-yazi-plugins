{
  lib,
  stdenv,
  fetchFromGitHub,
}:

stdenv.mkDerivation {
  pname = "yaziPlugins-bunny";
  version = "1.3.2";

  src = fetchFromGitHub {
    owner = "stelcodes";
    repo = "bunny.yazi";
    rev = "a0b4e18112839f2a38dc391f6f266e3a25a8bcf5";
    sha256 = "sha256-2HnMxiXpU0tD2RrljlRs8GEwNP4zNCu89F5bt9SeE+Y=";
  };

  buildPhase = ''
    mkdir $out
    cp $src/main.lua $out/main.lua
  '';

  meta = with lib; {
    description = "Bookmarks menu for yazi with persistent and ephemeral bookmarks, fuzzy searching, previous directory, directory from another tab";
    homepage = "https://github.com/stelcodes/bunny.yazi";
    license = licenses.mit;
    maintainers = [ ];
    platforms = platforms.all;
  };
}
