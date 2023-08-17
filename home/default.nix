{ config, lib, pkgs, ... }:

{
  imports = [
    ./alacritty.nix
    ./emacs.nix
    ./git.nix
    ./hyprland.nix
    ./zsh.nix
  ];

  home-manager.users.kabir = { pkgs, ... }: {
    home.packages = with pkgs; [
      docker-machine
      dunst
      fd
      ffmpeg
      gimp
      libreoffice-qt
      libsForQt5.polkit-kde-agent
      libsForQt5.qtwayland
      mutt
      qemu
      qmk
      qt6.qtwayland
      ripgrep
      rustup
      speedtest-cli
      spotify
      tree-sitter
    ];

    programs = {
      aria2.enable = true;
      go.enable = true;
      helix.enable = true;
      helix.defaultEditor = true;
      java.enable = true;
      pandoc.enable = true;
      yt-dlp.enable = true;
      zathura.enable = true;
    };

  };

}
