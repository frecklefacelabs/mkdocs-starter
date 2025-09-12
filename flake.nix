{
  description = "Dev shell with MkDocs and MkDocs Material";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        pythonEnv = pkgs.python311.withPackages (ps: with ps; [
          pip
          mkdocs
          mkdocs-material
          pkgs.python311Packages.mkdocs-macros
          pymdown-extensions
          mkdocs-git-revision-date-localized-plugin
        ]);
      in {
        devShells.default = pkgs.mkShell {
          buildInputs = [
            pythonEnv
          ];
          shellHook = ''
            echo "🚀 Welcome to your MkDocs dev shell!"
            echo "Run: mkdocs serve"
          '';
        };
      });
}