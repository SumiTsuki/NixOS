{ pkgs, ... }:

{
	home.packages = with pkgs; [
		emacs-pgtk
		rnix-lsp
		clangd
		pyright
	];
	home.file.".config/emacs" = {
		source = ./emacs;
		recursive = true;
	};
}
