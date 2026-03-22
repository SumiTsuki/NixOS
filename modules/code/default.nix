{ pkgs, config, ... }:

{
	programs.direnv = {
		enable = true;
    silent = true;
		nix-direnv.enable = true;
	};
	imports = [
		./cpp.nix
		./python.nix
	];
}
