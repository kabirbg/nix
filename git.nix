{ config, pkgs, ... }:

{
    programs.git = {
      enable = true;
      userEmail = "kabirg108@gmail.com";
      userName = "Kabir Gupta";
      extraConfig = {
        credential.helper = "store";
        pull.rebase = false;
        init.defaultBranch = "main";
        lfs.enable = true;
      };
    };

    programs.gitui.enable = true;
}
