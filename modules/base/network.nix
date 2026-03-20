{ pkgs, config, ... }:

{
	programs.clash-verge = {
		enable = ture;
		serviceMode = true;
		tunMode = true;
	};
}