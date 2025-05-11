{
  lib,
  stdenv,
  fetchFromGitHub,
}:

stdenv.mkDerivation {
  pname = "yaziPlugins-bunny";
  version = "1.2.0";

  src = fetchFromGitHub {
    owner = "stelcodes";
    repo = "bunny.yazi";
    rev = "1062775fb28cdb021a8c287a962f648a73b10128";
    sha256 = "sha256-XXp4dflrVrs8FrUCRUbSxWZTSGPrIGrpqvB1pARerKQ=";
  };

  buildPhase = ''
    mkdir $out
    cp $src/* $out
  '';

  meta = with lib; {
    description = "Bookmarks menu for yazi with persistent and ephemeral bookmarks, fuzzy searching, previous directory, directory from another tab";
    homepage = "https://github.com/stelcodes/bunny.yazi";
    license = licenses.mit;
    maintainers = [ ];
    platforms = platforms.all;
  };
}
