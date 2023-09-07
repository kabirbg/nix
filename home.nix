{ config, pkgs, ... }:

{
  imports = [
    ./alacritty.nix
    #./anyrun.nix
    ./git.nix
    ./hyprland.nix
    ./zsh.nix
  ];

  nixpkgs.config.allowUnfree = true;

  home.username = "kabir";
  home.homeDirectory = "/home/kabir";

  home.packages = with pkgs; [
      brave
      cider
      cliphist
      discord
      docker-machine
      dolphin
      dunst
      fd
      ffmpeg
      gtklock
      gtklock-userinfo-module
      gtklock-powerbar-module
      gtklock-playerctl-module
      grim
      libreoffice-qt
      libsForQt5.polkit-kde-agent
      libsForQt5.qtwayland
      libsForQt5.sddm-kcm
      mutt
      qemu
      qmk
      qt6.qtwayland
      ripgrep
      rustup
      slurp
      speedtest-cli
      spotify
      thunderbird
      tree-sitter
      wofi
      zoom-us
    ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    #".config/hypr/hyprland.conf".source = dotfiles/hyprland;
  };

  home.sessionVariables = {
    EDITOR = "${pkgs.helix}/bin/hx";
  };

  programs = {
    aria2.enable = true;
    emacs.enable = true;
    firefox.enable = true;
    firefox.package = pkgs.firefox-devedition;
    go.enable = true;
    helix.enable = true;
    home-manager.enable = true;
    java.enable = true;
    pandoc.enable = true;
    waybar.enable = true;
    yt-dlp.enable = true;
    zathura.enable = true;
  };
  
  home.stateVersion = "23.05";
}
