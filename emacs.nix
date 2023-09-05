{ config, pkgs, ... }:

let
  doom-emacs = pkgs.callPackage (builtins.fetchTarball {
    url = https://github.com/nix-community/nix-doom-emacs/archive/master.tar.gz;
  }) {
    doomPrivateDir = /home/kabir/.doom.d;  # Directory containing your config.el, init.el
                                # and packages.el files
  };

in

{
    home.packages = [ doom-emacs ];
    
    programs.emacs = {
      enable = true;
      extraConfig = ''
          (use-package nix-mode
            :mode ("\\.nix\\'" "\\.nix.in\\'"))
          (use-package nix-drv-mode
            :ensure nix-mode
            :mode "\\.drv\\'")
          (use-package nix-shell
            :ensure nix-mode
            :commands (nix-shell-unpack nix-shell-configure nix-shell-build))
          (use-package nix-repl
            :ensure nix-mode
            :commands (nix-repl))

          ;; set shortcuts to increase/decrease zoom level
          (global-set-key [C-mouse-4] 'text-scale-increase)
          (global-set-key [C-mouse-5] 'text-scale-decrease)
          '';
    };
}
