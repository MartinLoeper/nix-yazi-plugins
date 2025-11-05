{
  lib,
  stdenv,
  fetchFromGitHub,
}:

stdenv.mkDerivation {
  pname = "yaziPlugins-sshfs";
  version = "1.0.0";

  src = fetchFromGitHub {
    owner = "uhs-robert";
    repo = "sshfs.yazi";
    rev = "2728b14da2dff86b93aed9e04c45c60d5a06bdcd";
    sha256 = "sha256-enIt79UvQnKJalBtzSEdUkjNHjNJusUWC4L6QFb3Ou4=";
  };

  buildPhase = ''
    mkdir $out
    cp $src/main.lua $out/
  '';

  meta = with lib; {
    description = "sshfs.yazi integrates seamlessly with the Yazi terminal file manager, using SSHFS to mount and unmount remote systems so you can browse, preview, and edit single files or entire directories as if they were local.";
    homepage = "https://github.com/uhs-robert/sshfs.yazi";
    license = licenses.mit;
    maintainers = [ ];
    platforms = platforms.all;
  };
}
