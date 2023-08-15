{ config, lib, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    prezto.enable = true;
    enableSyntaxHighlighting = true;
    enableAutosuggestions = true;
    promptInit = "source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme";

    /*plugins = [
      {
        name = "zsh-autosuggestions";
        src = pkgs.fetchFromGitHub {
          owner = "zsh-users";
          repo = "zsh-autosuggestions";
          rev = "v0.7.0";
          sha256 = "1g3pij5qn2j7v7jjac2a63lxd97mcsgw6xq6k5p7835q9fjiid98";
        };
      }
      {
        name = "zsh-syntax-highlighting";
        src = pkgs.fetchFromGithub {
          owner = "zsh-users";
          repo = "zsh-syntax-highlighting";
          rev = "0.7.1";
          sha256 = "03r6hpb5fy4yaakqm3lbf4xcvd408r44jgpv4lnzl9asp4sb9qc0";
        };
      }
    ];*/

    interactiveShellInit = ''
      [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh\n";
      ${pkgs.fortune}/bin/fortune | ${pkgs.neo-cowsay}/bin/cowthink | ${pkgs.lolcat}/bin/lolcat
    '';

    historySubstringSearch.enable = true;

    initExtraFirst =  ''
      if [[ -r "''${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-''${(%):-%n}.zsh" ]]; then
         source "''${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-''${(%):-%n}.zsh"
      fi
    '';

    initExtra = ''
      # Wasmer
      export WASMER_DIR="/Users/kabir/.wasmer"
      [ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"

      # >>> conda initialize >>>
      # !! Contents within this block are managed by 'conda init' !!
      __conda_setup="$('/Users/kabir/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
      if [ $? -eq 0 ]; then
        eval "$__conda_setup"
      else
        if [ -f "/Users/kabir/anaconda3/etc/profile.d/conda.sh" ]; then
           . "/Users/kabir/anaconda3/etc/profile.d/conda.sh"
        else
          export PATH="/Users/kabir/anaconda3/bin:$PATH"
        fi
      fi
      unset __conda_setup
      # <<< conda initialize <<<

    '';

    shellAliases = {
      a = "pmset sleepnow";
      emacs = "emacs -nw";
      empty = "ls -A ~/.Trash/* && rm -rf ~/.Trash/*";
      wttr = "curl wttr.in";
      ytd = "yt-dlp";
      pseudo = "sudo";
    };
  };
}
