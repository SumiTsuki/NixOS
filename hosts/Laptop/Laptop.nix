{ pkgs, config, ...}:

{
	imports = [
		./hardware-configuration.nix
		../../modules/base
		../../modules/desktop
		../../modules/code
	];
	networking.hostName = "NixOS";
	users.users.Luna = {
		isNormalUser = true;
		extraGroups = [ "wheel" ];
	};
	system.stateVersion = "25.11";
}