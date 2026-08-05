{ pkgs, ... }:
{
  imports = [
    ./core
    ./plugins
    ./themes
  ];

  viAlias = true;
  vimAlias = true;
  # defaultEditor = true;

  clipboard = {
    register = "unnamedplus";
    providers = {
      wl-copy.enable = true;
      xclip.enable = true;
    };
  };

  #globals.mapleader = "\\";

  plugins = {
    persistence.enable = true;
    direnv.enable = true;
    web-devicons.enable = true;
    lastplace.enable = true;
    nvim-autopairs.enable = true;
    markdown-preview.enable = true;
    tmux-navigator.enable = true;
    better-escape = {
      enable = true;
      settings.timeout = 200;
    };
    which-key = {
      enable = false; # If you want to enable then change timeoutLen to 10 in core/options.nix for better performance
      settings.show_keys = true;
    };
  };

  extraPlugins = with pkgs.vimPlugins; [
    #vim-be-good
    nui-nvim
    (pkgs.vimUtils.buildVimPlugin {
      name = "tuxedo";
      src = pkgs.fetchFromGitHub {
        owner = "IogaMaster";
        repo = "tuxedo.nvim";
        rev = "65650b0ae3b1c3755a43306b07ada13bd78d47ac"; # Use a specific commit or tag for reproducibility
        sha256 = "sha256-e8Vk2QvMNDDpYCiTWwm5IgDlDhVKj2g+kNHpLbkYGx4="; # Replace with the actual hash
      };
    })
  ];

  extraConfigLua = ''
    require('tuxedo').setup({
      create_todo_file = true,
    	width_ratio = 0.95,
    	height_ratio = 0.85,
    })
  '';

  extraPackages = with pkgs; [
    tuxedo
    ripgrep
    tmux-sessionizer

    # -- Formatters
    nixfmt
    ruff
    # pylint
    cmake-format
    # gofumpt
    # golines
    # gotools
    prettier
    prettierd
    rustfmt
    shfmt
    stylua

    # -- Debuggers / misc deps
    delve
    golangci-lint
    fd
    gdb
    go
    marksman

    # -- Linters
    commitlint
    eslint_d
    hadolint
    html-tidy
    luajitPackages.luacheck
    markdownlint-cli
    yamllint
  ];
}
