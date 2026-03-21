{ pkgs, ... }:

{
	home.packages = with pkgs; [
		niri
		wl-clipboard
	];
	home.file.".config/niri/config.kdl".source = ./config.kdl;
}
