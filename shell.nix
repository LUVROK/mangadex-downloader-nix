
{ pkgs ? import <nixpkgs> {} }:

let
  pythonPackages = with pkgs.python311Packages; [
    python-dotenv
    pip
  ];

in pkgs.mkShell rec {
  buildInputs = with pkgs; [
    python311Full
    python311Packages.virtualenv
    python311Packages.pillow
    zlib
  ];
}
