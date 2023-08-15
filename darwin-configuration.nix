{ config, pkgs, ... }:

{
  imports = [
    <home-manager/nix-darwin>
    ./home
    ./brew.nix
  ];

  nixpkgs.config.allowUnfree = true;

  environment = {
    variables.EDITOR = "${pkgs.neovim}";
    pathsToLink = [ "/share/zsh" ];
    systemPackages = with pkgs; [ neofetch neovim python3Full ranger wget toybox ];
    systemPath = [ "/Users/kabir/.emacs.d/bin" "/Users/kabir/node_modules/.bin" "/Library/TeX/texbin" ];
  };

  fonts.fonts = with pkgs; [ liberation_ttf fira-code ];

  services = {
    nix-daemon.enable = true;
    skhd.enable = true;
  };

  system = {
    defaults = {
      dock = {
        autohide = true;
        mru-spaces = false;
        orientation = "right";
        static-only = true;
        wvous-bl-corner = 11;
        wvous-br-corner = 4;
        wvous-tl-corner = 2;
        wvous-tr-corner = 12;
      };

      finder = {
        CreateDesktop = false;
        QuitMenuItem = true;
      };

      loginwindow.SHOWFULLNAME = true;
      menuExtraClock.Show24Hour = true;
      screencapture.location = "~/Pictures";
    };
  };

  users.users.kabir = {
    name = "kabir";
    description = "Kabir Gupta";
    home = "/Users/Kabir";
    shell = pkgs.zsh;
  };
}
