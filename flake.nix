{
  description = "muad's NixOS configuration for host: ace";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    hyprland.url = "github:hyprwm/Hyprland";
  };
  outputs = inputs @ {
    self,
	nixpkgs,
	hyprland,
	...
	}: {
	  nixosConfigurations.ace = nixpkgs.lib.nixosSystem {
		system = "x86_64-linux";
		specialArgs = {inherit inputs;};
		modules = [
			./configuration.nix
		];
	  };
	};
}