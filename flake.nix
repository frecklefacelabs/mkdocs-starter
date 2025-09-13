{
  description = "A flake for mkdocs";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      # System architectures you want to build for
      supportedSystems = [ "x86_64-linux" "aarch64-linux" ];
      
      # For each system, define a set of packages
      forAllSystems = f: nixpkgs.lib.genAttrs supportedSystems (system: f system);
      
    in {
      # A development shell
      devShells = forAllSystems (system:
        let
          pkgs = import nixpkgs { inherit system; };
          mkdocsShell = pkgs.mkShell {
            buildInputs = [
              pkgs.python3
              pkgs.python3.pkgs.pip
              pkgs.python3.pkgs.virtualenv
              pkgs.nodejs_24
            ];

            shellHook = ''
              # Some packages we need aren't in search.nixos so we're adding everything this way
              # Check if the virtual environment exists and is not empty.
              if [ ! -d ".venv" ] || [ ! -f ".venv/bin/activate" ]; then
                echo "Creating and populating a new virtual environment..."
                virtualenv .venv
                source .venv/bin/activate
                pip install mkdocs mkdocs-material mkdocstrings-python mkdocstrings-typescript mkdocs-git-revision-date-localized-plugin
              else
                echo "Virtual environment already exists. Activating..."
                source .venv/bin/activate
              fi
            '';
          };
      in
      {
        # The 'default' attribute makes this the default devShell for this system.
        default = mkdocsShell;
      });
    };
}