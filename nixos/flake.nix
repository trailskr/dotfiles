{
  description = "Nixos config flake";

  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-unstable";
    };
  };

  outputs = {
    self,
    nixpkgs,
    ...  
  } @attrs: {
    nixosConfigurations = {
      compucter = nixpkgs.lib.nixosSystem {
        specialArgs = attrs;
        modules = [./configuration.nix];
      };
    };
  };
}
