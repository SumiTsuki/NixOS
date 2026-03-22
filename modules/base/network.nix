{ pkgs, config, ... }:

{
  programs.clash-verge = {
    enable = true;
    tunMode = true;
  };
}
