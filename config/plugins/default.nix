{
  imports = [
    ./alpha.nix
    ./bufferline.nix
    ./cmp.nix
    ./format.nix
    ./git.nix
    ./lsp.nix
    ./lualine.nix
    ./neo-tree.nix
    ./noice.nix
    ./presence.nix
    ./statuscol.nix
    ./telescope.nix
    ./toggleterm.nix
    ./treesitter.nix
    ./ufo.nix

  ];

  plugins = {
    # -- Cosmetic Tweaks --
    todo-comments.enable = true;
    # lightline.enable = true;
    highlight-colors.enable = true;

  };
}
