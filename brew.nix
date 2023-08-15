{ config, lib, pkgs, ... }:

{
  homebrew = {
    enable = true;
    global = {
      autoUpdate = false;
      brewfile = true;
    };

    onActivation = {
      upgrade = true;
      cleanup = "zap";
    };

    taps = [
      "buo/cask-upgrade"
      "homebrew/cask-versions"
      "koekeishiya/formulae"
    ];

    brews = [ "yabai" ];

    casks = [
      "activitywatch"
      "adobe-connect"
      "arc"
      "background-music"
      "balenaetcher"
      "blender"
      "brave-browser"
      "discord"
      "firefox-developer-edition"
      "flycut"
      "google-drive"
      "intellij-idea-ce"
      "microsoft-auto-update"
      "microsoft-excel"
      "microsoft-powerpoint"
      "microsoft-word"
      "mos"
      "notion-enhanced"
      "obs"
      "onedrive"
      "opencore-configurator"
      "qutebrowser"
      "qmk-toolbox"
      "rescuetime"
      "rstudio"
      "skype"
      "the-unarchiver"
      "thunderbird-beta"
      "unetbootin"
      "virtualbox"
      "vlc"
      "xquartz"
      "zoom"
      "zotero"
    ];
  };
}
