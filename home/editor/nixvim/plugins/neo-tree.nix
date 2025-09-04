{
  programs.nixvim.plugins = {
    neo-tree = {
      enable = true;
      # eventHandlers = {
      #   before_render = ''
      #     function (state)
      #     end'';

      #   file_opened = ''
      #     function(file-path)
      #     require("neo-tree").close_all()
      #     end'';
      # };
    };
  };
}
