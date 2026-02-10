{
  plugins = {

    #dependancy for neotree
    nui.enable = true;
    #adds file icons
    web-devicons.enable = true;
    
    neo-tree = {
      enable = true;

      settings  = {
#     close_if_last_window = true;
        filesystem = {
          follow_current_file = {
            enabled = true;
            leave_dirs_open = true;
          };
        };
      };
    };
  };
}
