{
  opts = {
    termguicolors = true;
    signcolumn = "yes";

    #line numbers
    number = true;
    relativenumber = true;

    #tab settings
    tabstop = 2;
    shiftwidth = 2;
    softtabstop = 2;
    showtabline = 2;
    expandtab = true;
    shiftround = true;
    autoindent = true;
    smartindent = true;

    #keep n lines above and below curser unless at start/end of file.
    scrolloff = 8;

    # encoding settings
    encoding = "utf-8";
    fileencoding = "utf-8";

    # better completions
    updatetime = 50;
    completeopt = [
      "menuone"
      "noselect"
      "noinsert"
    ];

    #highlight line where cursor is
    cursorline = true;

    # See: https://github.com/kevinhwang91/nvim-ufo#minimal-configuration
    foldcolumn = "1";
    foldlevel = 99;
    foldlevelstart = 99;
    foldenable = true;
  };

}
