{ pkgs, config, ... }:

{
	programs.clash-verge = {
		enable = true;
		serviceMode = true;
		tunMode = true;
	};
  services.mihomo = {
    enable = true;
    tunMode = true;
  };
}
