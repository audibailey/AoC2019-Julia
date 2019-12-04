
with import <nixpkgs> {};
let
  python3-with-my-packages =
    pkgs.python3.withPackages (python-packages: with python-packages; [
      jupyter
    ]);
in
stdenv.mkDerivation rec {
  name = "AoC2019-environment";

  buildInputs = [
    pkgs.julia_11
    python3-with-my-packages
  ];
}
