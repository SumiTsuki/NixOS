{ pkgs, config, ... }:

{
	programs.clash-verge.enable = true;
	environment.sessionVariables = {
    HTTP_PROXY = "http://127.0.0.1:7897";
    HTTPS_PROXY = "http://127.0.0.1:7897";
    ALL_PROXY = "socks5://127.0.0.1:7897";
    NO_PROXY = "localhost,127.0.0.1,::1";
  };
  
  environment.variables = {
    http_proxy = "http://127.0.0.1:7897";
    https_proxy = "http://127.0.0.1:7897";
    all_proxy = "socks5://127.0.0.1:7897";
    no_proxy = "localhost,127.0.0.1,::1";
  };
}