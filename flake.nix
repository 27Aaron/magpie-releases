{
  description = "Nix packages for magpie";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

  outputs =
    {
      self,
      nixpkgs,
    }:
    let
      inherit (nixpkgs) lib;
      systems = [
        "aarch64-darwin"
        "aarch64-linux"
        "x86_64-linux"
      ];
      forAllSystems = lib.genAttrs systems;

      packagesFrom = pkgs: {
        magpie = pkgs.callPackage ./nix/package.nix { };
        magpie-cli = pkgs.callPackage ./nix/package.nix {
          gui = false;
        };
      };
    in
    {
      packages = forAllSystems (system: packagesFrom (import nixpkgs { inherit system; }));

      overlays.default = final: _prev: packagesFrom final;

      # `nix flake check` builds both, so hashes.json is verified too.
      checks = forAllSystems (
        system:
        let
          packages = self.packages.${system};
        in
        {
          inherit (packages) magpie magpie-cli;
        }
      );

      formatter = forAllSystems (
        system:
        (nixpkgs.legacyPackages.${system}.nixfmt-tree.override {
          nixfmtPackage = nixpkgs.legacyPackages.${system}.nixfmt-rs;
        })
      );
    };
}
