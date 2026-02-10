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

    globals.mapleader = " ";


    plugins = {
#       nvim-tree = {
#           enable = true;

#           # NOTE: may need to disable for 
#           openOnSetup = true;
#           openOnSetupFile = true;
#       };
#       web-devicons.enable = true;
    };

}
