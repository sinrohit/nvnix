{
  description = "NeoVim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixvim.url = "github:nix-community/nixvim";
    systems.url = "github:nix-systems/default";
  };

  outputs = inputs@{ self, ... }:
    inputs.flake-parts.lib.mkFlake { inherit inputs; } {
      systems = import inputs.systems;

      perSystem = { system, pkgs, self', lib, ... }:
        let
          nixvim = inputs.nixvim.legacyPackages.${system};
          nixvimModule = {
            inherit pkgs;
            module = import ./config;
            extraSpecialArgs = { };
          };
          nvim = nixvim.makeNixvimWithModule nixvimModule;
        in
        {
          packages.default = nvim;
        };
    };
}
