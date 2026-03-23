{ pkgs, config, ... }:

{
	imports = [
		./base.nix
		./network.nix
		./fhs.nix
		./fonts.nix
	];
}
