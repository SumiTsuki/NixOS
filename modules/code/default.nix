{ pkgs, config, ... }:

{
	imports = [
		./cpp.nix
		./python.nix
	];
}