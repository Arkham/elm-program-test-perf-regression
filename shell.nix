{ ... }:
let
  sources = import ./nix/sources.nix { };
  nixpkgs = import sources.nixpkgs { };
in with nixpkgs;
mkShell { buildInputs = [ elmPackages.elm elmPackages.elm-test ]; }
