{ config, pkgs, ... }:

{
    programs.alacritty = {
      enable = true;
      settings = {
        window = {
          opacity = 0.95;

          padding = {
            x = 10;
            y = 10;
          };

          title = "Alacritty";
          dynamic_title = true;
        };

        draw_bold_text_with_bright_colors = true;

        cursor.style = "Beam";

        #shell.program = /usr/local/bin/tmux;
      };
    };
}
