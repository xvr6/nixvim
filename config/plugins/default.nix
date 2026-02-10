{
  imports = [
    ./format.nix  
    ./git.nix
    ./lsp.nix
    ./lualine.nix
    ./noice.nix
    ./treesitter.nix
  ];

    plugins = {
        nvim-tree = {
            enable = true;
            openOnSetup = true;
            openOnSetupFile = true;
        };

        #dependancy for nvim tree
        web-devicons.enable = true;
        
        # -- Language Server Protocol --
        lsp.enable = true;
        lsp.servers = {
            nixd.enable = true;
            vue_ls.enable = true;
            gopls.enable = true;
            # golangci_lint_ls.enable = true;
        };
        
        # -- Cosmetic Tweaks --
        todo-comments.enable = true;
        # lightline.enable = true;
        highlight-colors.enable = true;
        
        # -- Tools -- 
        telescope.enable = true;

    };

}
