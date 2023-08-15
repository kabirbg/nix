{ config, lib, pkgs, ... }:

{
    programs.emacs = {
        enable = true;
        package = pkgs.emacs-macport;
        extraPackages = epkgs: [ epkgs.doom ];
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
