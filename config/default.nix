{ pkgs, ... }: {
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
    vim-be-good
    nui-nvim
  ];
  
  extraPackages = with pkgs; [
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
    nodePackages.prettier
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
