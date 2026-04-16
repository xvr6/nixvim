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
        ts_ls.enable = true;
        gopls.enable = true;
        pylsp.enable = true;
        java_language_server.enable = true;

        jsonls.enable = true;
        tombi.enable = true; #.toml
        rumdl.enable = true; #.md
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
