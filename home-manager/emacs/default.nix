{ pkgs, ... }:

{
	home.packages = with pkgs; [
		emacs-pgtk
		nil
		clang-tools
    cmake-language-server
		pyright
	];
	home.file.".config/emacs" = {
		source = ./emacs;
		recursive = true;
	};
}
