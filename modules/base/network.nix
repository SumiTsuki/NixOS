{ pkgs, config, ... }:

{
	programs.clash-verge.enable = true;
	environment.sessionVariables = {
    HTTP_PROXY = "http://127.0.0.1:7897";
    HTTPS_PROXY = "http://127.0.0.1:7897";
    ALL_PROXY = "socks5://127.0.0.1:7897";  # 如果客户端也支持SOCKS
    NO_PROXY = "localhost,127.0.0.1,::1";   # 本地地址不走代理
  	};

  	# 对于某些终端和systemd服务，可能需要额外设置
  	environment.variables = {
    http_proxy = "http://127.0.0.1:7897";
    https_proxy = "http://127.0.0.1:7897";
    all_proxy = "socks5://127.0.0.1:7897";
    no_proxy = "localhost,127.0.0.1,::1";
  	};
}