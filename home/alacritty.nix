{ config, lib, pkgs, ... }:


home-manager.users.kabir = { pkgs, ... }: {
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

        decorations = "buttonless";
        title = "Alacritty";
        dynamic_title = true;
        use_thin_strokes = true;
      };

      draw_bold_text_with_bright_colors = true;

      cursor.style = "Beam";

      font.normal.family = "MesloLGS NF";

      #shell.program = /usr/local/bin/tmux;
    };
  };
};
}