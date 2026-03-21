{ pkgs, config, ... }:

{
	programs.direnv = {
					enable = true;
					nix-direnv.enable = true;
	};
	imports = [
		./cpp.nix
		./python.nix
	];
}