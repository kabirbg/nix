{ config, lib, pkgs, ... }:

{
  home-manager.users.kabir = { pkgs, ... }: {
    programs.zsh = {
      enable = true;
      enableSyntaxHighlighting = true;
      enableAutosuggestions = true;
      historySubstringSearch.enable = true;

      initExtraFirst =  ''
      ${pkgs.fortune}/bin/fortune | ${pkgs.neo-cowsay}/bin/cowthink | ${pkgs.lolcat}/bin/lolcat
      if [[ -r "''${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-''${(%):-%n}.zsh" ]]; then
         source "''${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-''${(%):-%n}.zsh"
      fi
    '';

      initExtra = ''
      # Wasmer
      export WASMER_DIR="/Users/kabir/.wasmer"
      [ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"

      # Powerlevel10k
      [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
      source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme

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

      #envExtra = "EDITOR=${pkgs.helix}/bin/hx";

      shellAliases = {
        emacs = "emacs -nw";
        wttr = "curl wttr.in";
        ytd = "yt-dlp";
        pseudo = "sudo";
      };
    };
  };
}
