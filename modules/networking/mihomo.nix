{ pkgs, config, ... }:

{
	environment.systemPackages = with pkgs; [
	];
	programs.clash-verge = {
		enable = true;
		tunMode = true;
	};
}
