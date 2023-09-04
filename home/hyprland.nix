{ config, lib, pkgs, ... }:

{
  home-manager.users.kabir = { pkgs, ... }: {
    wayland.windowManager.hyprland = {
      enable = true;
      plugins = [ ];
      #settings = {};     
    };
  };

  programs.hyprland.xwayland.hidpi = true;
}
