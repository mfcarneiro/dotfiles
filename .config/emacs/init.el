;;; Package --- Summary
;;; Commentary:
;;; Code:

(setq load-prefer-newer t)

;; Background opacity
(set-frame-parameter nil 'alpha-background 80) ; For current frame
(add-to-list 'default-frame-alist '(alpha-background . 80)) ; For all new frames

;; Noctalia theme loader
(add-to-list 'custom-theme-load-path "~/.config/emacs/themes/")

;; make frame transparency overridable
(defvar efs/frame-transparency '(60 . 60))

;; font stuff
(defvar efs/default-font-size 110)
(defvar efs/default-variable-font-size)
(set-face-attribute 'default nil :font "MonoLisa Nerd Font Mono" :height 110)

;; Smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; old M-x
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; delete trailing whitespace before saving buffers
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; core modes
(ido-mode 1)
(repeat-mode 1)                ;; enable repeating key maps
(menu-bar-mode -1)             ;; hide the menu bar
(tool-bar-mode -1)             ;; hide the tool bar
(set-fringe-mode 10)           ;; add some space vertically
(savehist-mode 1)              ;; save minibuffer history
(scroll-bar-mode -1)           ;; hide the scroll bar
(xterm-mouse-mode 1)           ;; Enable mouse events in terminal Emacs
(display-time-mode 1)          ;; Display time in mode line / tab bar
(column-number-mode 1)         ;; Show column number on mode line
(tab-bar-history-mode 1)       ;; Remember previous tab window configurations
(auto-save-visited-mode 1)     ;; Auto-save files at an interval
(global-visual-line-mode 1)    ;; visually wrap long lines in all buffers
(global-auto-revert-mode 1)    ;; refresh buffers with changed local files

;; fixed dedicated windows without breaking the layout
(set-window-dedicated-p (selected-window) t)

;; tabs to spaces
(setq-default indent-tabs-mode nil
              tab-width 4)

;; relative-numbers
(setq-default
 display-line-numbers-type 'relative)
(column-number-mode)
(global-display-line-numbers-mode t)

;; disable line numbers for some modes
(dolist (mode '(org-mode-hook
                term-mode-hook
                eshell-mode-hook
                treemacs-mode-hook
                dired-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

;; Initialize package sources
(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; doom-modeline
(use-package doom-modeline
             :ensure t
             :init (doom-modeline-mode 1))

;; tree-sitter
(use-package tree-sitter-langs
             :ensure t
             :after tree-sitter)

;; dashboard
(use-package dashboard
             :ensure t
             :config
             (dashboard-setup-startup-hook))

(use-package eshell-git-prompt
             :after eshell)

;; angel-nativecomp
(use-package compile-angel
  :demand t
  :config
  ;; Set `compile-angel-verbose' to nil to disable compile-angel messages.
  ;; (When set to nil, compile-angel won't show which file is being compiled.)
  (setq compile-angel-verbose t)

  ;; `use-package' macro, you'll need to explicitly add:
  ;; (eval-when-compile (require 'use-package)) at the top of your
  ;; init file.
  (push "/init.el" compile-angel-excluded-path-suffixes)
  (push "/early-init.el" compile-angel-excluded-path-suffixes)

  ;; compile automatically when an Elisp file is saved
  (add-hook 'emacs-lisp-mode-hook #'compile-angel-on-save-local-mode)
  (compile-angel-on-load-mode 1))

;; flyC
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode)
  :config
  (setq flycheck-display-errors-function
        #'flycheck-display-error-messages-unless-error-list)
  (setq flycheck-indication-mode nil))

(use-package flycheck-pos-tip
  :ensure t
  :after flycheck
  :config
  (flycheck-pos-tip-mode))

(use-package lsp-mode
  :ensure
  :commands lsp
  :custom
  ;; what to use when checking on-save. "check" is default
  ;;(lsp-eldoc-render-all t)
  (lsp-idle-delay 0.6)
  ; enable / disable the hints as you prefer:
  (lsp-inlay-hint-enable t)
  ;; optional configurations.
  :config
  (add-hook 'lsp-mode-hook 'lsp-ui-mode))

;; lsp
(use-package lsp-mode
  :ensure t
  :hook ((c-mode . lsp)
         (c++-mode . lsp)
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp
  :config
  (setq lsp-keymap-prefix "C-c l")
  (define-key lsp-mode-map (kbd "C-c l") lsp-command-map)
  (setq lsp-file-watch-threshold 15000)
  )

;; lsp-ui
(use-package lsp-ui
  :ensure t
  :commands (lsp-ui-mode)
  :config
  (setq lsp-ui-doc-enable nil)
  (setq lsp-ui-doc-delay 0.5)
  (define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
  (define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)
  )

;; lsp ivyn
(use-package lsp-ivy
  :ensure t
  :commands lsp-ivy-workspace-symbol)

;; company
(use-package company
  :ensure t
  :bind ("M-/" . company-complete-common-or-cycle) ;; overwritten by flyspell
  :init (add-hook 'after-init-hook 'global-company-mode)
  :config
  (setq company-show-numbers        t
    company-minimum-prefix-length   1
    company-idle-delay              0.5
    company-backends
    '((company-files          ; files & directory
       company-keywords       ; keywords
       company-capf
       company-yasnippet)
      (company-abbrev company-dabbrev))))

(use-package company-box
  :ensure t
  :after company
  :hook (company-mode . company-box-mode))

;; yasnippet
(use-package yasnippet
  :ensure
  :config
  (yas-reload-all)
  (add-hook 'prog-mode-hook 'yas-minor-mode)
  (add-hook 'text-mode-hook 'yas-minor-mode))

;; flyC clang-analyzer
(with-eval-after-load 'flycheck
  (require 'flycheck-clang-analyzer)
  (flycheck-clang-analyzer-setup))

;; srefactor
(require 'srefactor)
(require 'srefactor-lisp)
(use-package srefactor
  :ensure t
  :config
  (semantic-mode 1)
  (define-key c-mode-map (kbd "M-RET") 'srefactor-refactor-at-point)
  (define-key c++-mode-map (kbd "M-RET") 'srefactor-refactor-at-point)
  )

;; Optional: Ito only with c/cpp
(semantic-mode 1)
(define-key c-mode-map (kbd "M-RET") 'srefactor-refactor-at-point)
(define-key c++-mode-map (kbd "M-RET") 'srefactor-refactor-at-point)
(global-set-key (kbd "M-RET o") 'srefactor-lisp-one-line)
(global-set-key (kbd "M-RET m") 'srefactor-lisp-format-sexp)
(global-set-key (kbd "M-RET d") 'srefactor-lisp-format-defun)
(global-set-key (kbd "M-RET b") 'srefactor-lisp-format-buffer)

(provide 'init)
