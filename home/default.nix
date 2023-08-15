{ config, lib, pkgs, ... }:

{
  imports = [
    ./alacritty.nix
    ./emacs.nix
    ./git.nix
    ./zsh.nix
  ];

  home-manager.users.kabir = { pkgs, ... }: {
    home.packages = with pkgs; [
      docker-machine
      fd
      ffmpeg
      gimp
      gtk-mac-integration
      libreoffice-bin
      qmk
      ranger
      speedtest-cli
      spotify
      tree-sitter
      utm
    ];

    programs = {
      aria2.enable = true;
      go.enable = true;
      helix = {
        enable = true;
        defaultEditor = true;
      };
      java.enable = true;
      neomutt.enable = true;
      pandoc.enable = true;
      ripgrep.enable = true;
      yt-dlp.enable = true;
    };

  };

}
