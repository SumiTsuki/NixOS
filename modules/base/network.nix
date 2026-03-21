{ pkgs, config, ... }:

{
	programs.clash-verge = {
		enable = true;
		serviceMode = true;
		tunMode = true;
	};
}
