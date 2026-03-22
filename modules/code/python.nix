{ pkgs, ... }:

{
	environment.systemPackages = [
    (pkgs.python3.withPackages (ps: with ps; [
      pyqt6
      pyqt6-webengine
      sexpdata
      epc
      pymupdf
    ]))
	];
}
