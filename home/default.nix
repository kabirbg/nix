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
      mutt
      qemu
      qmk
      ripgrep
      rustup
      speedtest-cli
      spotify
      tree-sitter
      utm
    ];

    programs = {
      aria2.enable = true;
      go.enable = true;
      helix.enable = true;
      java.enable = true;
      pandoc.enable = true;
      yt-dlp.enable = true;
      zathura.enable = true;
    };

    home.stateVersion = "23.05";
  };

}
