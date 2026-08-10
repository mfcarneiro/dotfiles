(load "~/.config/emacs/init.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(C-default-style '((c-mode . "") (awk-mode . "awk") (other . "gnu")))
 '(compilation-always-kill t)
 '(custom-enabled-themes '(wombat))
 '(ede-project-directories t)
 '(inhibit-default-init t)
 '(inhibit-startup-buffer-menu t)
 '(inhibit-startup-screen t)
 '(initial-buffer-choice "~/")
 '(initial-scratch-message "\12\12")
 '(package-selected-packages
   '(## cargo cargo-mode company-box compile-angel cpp-auto-include
        cppinsights cpputils-cmake demangle-mode doom-modeline
        dumb-jump eglot elixir-yasnippets eshell-git-prompt flycheck
        flycheck-clang-analyzer flycheck-clang-tidy flycheck-credo
        flycheck-eglot flycheck-elixir flycheck-pos-tip flycheck-rust
        idle-highlight-mode ido-complete-space-or-hyphen
        ido-exit-target ido-yes-or-no lsp-ivy lsp-mode lsp-ui
        magic-filetype magit magit-browse-commit magit-find-file
        magit-gitflow magit-ido project-cmake projectile
        rainbow-blocks rust-auto-use rust-mode rustic smex srefactor
        tldr yasnippet-snippets))
 '(warning-suppress-types '((defvaralias losing-value lsp-eldoc-hook) (treesit))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
