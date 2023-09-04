{ config, pkgs, ... }:

let
  unstable = import <nixos-unstable> {};  
in {
  home.packages = with unstable.pkgs; [
    waybar-hyprland
  ];
}
