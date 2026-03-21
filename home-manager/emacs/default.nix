{ pkgs, ... }:

{
	home.packages = with pkgs; [
		emacs-pgtk
		nil
		clangd
		pyright
	];
	home.file.".config/emacs" = {
		source = ./emacs;
		recursive = true;
	};
}
