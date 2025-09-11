{
  description = "MkDocs development environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        pythonEnv = pkgs.python3.withPackages (ps: with ps; [
          mkdocs
          mkdocs-material
          mkdocs-material-extensions
        ]);
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            pythonEnv
            nodejs
          ];

          shellHook = ''
            echo "MkDocs development environment activated!"
            echo "Available commands:"
            echo "  mkdocs serve    - Start development server"
            echo "  mkdocs build    - Build static site"
            echo "  mkdocs new      - Create new project"
            echo ""
            python --version
            mkdocs --version
          '';
        };
      });
}