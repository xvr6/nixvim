{
  plugins = {
    # dependancies
    nix.enable = true;
    crates.enable = true;

    # -- LSP
    lsp = {
      enable = true;

      # -- LANGUAGES
      servers = {
        nixd.enable = true;
        vue_ls.enable = true;
        gopls.enable = true;
      };

      # -- KEYBINDS
      keymaps = {
        silent = true;
        lspBuf = {
          "gd" = "definition";
          "gD" = "declaration";
          "gi" = "implementation";
          "gr" = "references";
          "gt" = "type_definition";
        
          "<leader>ca" = "code_action";
          "<leader>rn" = "rename";
          "<leader>wa" = "add_workspace_folder";
          "<leader>wr" = "remove_workspace_folder";
        };
      };
    };
  };
}
