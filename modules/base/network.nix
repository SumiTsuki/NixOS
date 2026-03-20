{ pkgs, config, ... }:

{
	programs.clash-verge.enable = true;
	networking.proxy = {
    default = "http://127.0.0.1:7897";
    noProxy = "127.0.0.1,localhost,::1";
    # 如果需要 HTTPS 单独配置
    # httpsProxy = "http://127.0.0.1:7897";
  };
  
  # 方法2：同时保留环境变量（双保险）
  environment.sessionVariables = {
    HTTP_PROXY = "http://127.0.0.1:7897";
    HTTPS_PROXY = "http://127.0.0.1:7897";
    NO_PROXY = "127.0.0.1,localhost,::1";
  };
}