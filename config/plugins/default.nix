{
  imports = [
    ./cmp.nix
    ./format.nix  
    ./git.nix
    ./lsp.nix
    ./lualine.nix
    ./neo-tree.nix
    ./noice.nix
    ./statuscol.nix
    ./treesitter.nix
    ./ufo.nix

  ];
  
  plugins = {
    # -- Cosmetic Tweaks --
    todo-comments.enable = true;
    # lightline.enable = true;
    highlight-colors.enable = true;
    
    # -- Tools -- 
    telescope.enable = true;

  };
}
