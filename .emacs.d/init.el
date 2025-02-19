(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("gnu" . "https://elpa.gnu.org/packages/")))

(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(require 'use-package)
(setq use-package-always-ensure t)
(package-refresh-contents)

;; themes
(package-install 'doom-themes)

(add-to-list 'custom-theme-load-path
             "~/.emacs.d/themes/")
;; (load-theme 'gruber-darker t)
;; (load-theme 'catppuccin :no-confirm)
(load-theme 'fire-obsidian t)

(unless (package-installed-p 'hydra)
  (package-refresh-contents)
  (package-install 'hydra))

(global-set-key (kbd "C-c b") 'load-themes/body)

;; options
(set-fringe-mode 15)
(electric-indent-mode 1)
(column-number-mode t)
(global-display-line-numbers-mode t)
(global-hl-line-mode t)
(global-visual-line-mode t)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(tooltip-mode -1)
(menu-bar-mode 0)

;; xah fly keys
(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'xah-fly-keys)

(define-key xah-fly-insert-map (kbd "C-s") 'save-buffer)
(define-key xah-fly-insert-map (kbd "C-n") 'xah-new-empty-buffer)
(define-key xah-fly-insert-map (kbd "C-k") 'kill-buffer)
(define-key xah-fly-insert-map (kbd "C-e") 'my-eshell-split-window) 
(define-key xah-fly-insert-map (kbd "C-t") 'treemacs)
(define-key xah-fly-insert-map (kbd "C-w") 'delete-window) 
(define-key xah-fly-command-map (kbd "S") 'save-buffer)
(define-key xah-fly-command-map (kbd "K") 'kill-buffer)
(define-key xah-fly-command-map (kbd "TD") 'org-todo)
(define-key xah-fly-command-map (kbd "D") 'dired-create-directory)
(define-key xah-fly-command-map (kbd "F") 'dired-create-empty-file)
(define-key xah-fly-command-map (kbd ".") 'isearch-forward)

(xah-fly-keys 1)

;; functions
(defun my-eshell-split-window ()
  
  (interactive)
  (split-window-below)         
  (other-window 1)             
  (eshell))   

(defun open-dired ()
  
  (interactive)
  (dired default-directory))

(defun move-line-up ()
  (interactive)
  (transpose-lines 1)
  (forward-line -2))

(defun move-line-down ()
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1))

(global-set-key (kbd "M-<up>") 'move-line-up) ;; Alt + ↑
(global-set-key (kbd "M-<down>") 'move-line-down) ;; Alt + ↓

(setq inhibit-startup-message t)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq initial-scratch-message nil)
(electric-pair-mode t)
(setq make-backup-files nil)
(setq auto-save-default nil)

(setq auto-mode-alist (append '(("\\.scm$" . scheme-mode)) auto-mode-alist))
(setq auto-mode-alist (append '(("\\.lisp$" . lisp-mode)) auto-mode-alist))
(add-to-list 'auto-mode-alist '("\\.el\\'" . emacs-lisp-mode))

(use-package projectile)
(use-package flycheck)
(use-package yasnippet :config (yas-global-mode))
(use-package lsp-mode :hook ((lsp-mode . lsp-enable-which-key-integration))
  :config (setq lsp-completion-enable-additional-text-edit nil))
(use-package company)
(use-package lsp-ui)
(use-package which-key :config (which-key-mode))
(use-package lsp-java :config (add-hook 'java-mode-hook 'lsp))
(use-package dap-mode :after lsp-mode :config (dap-auto-configure-mode))
(use-package dap-java :ensure nil)
(use-package helm-lsp)
(use-package helm
  :config (helm-mode))
(use-package lsp-treemacs)
(use-package all-the-icons
    :ensure t)

;; snippets
(require 'yasnippet)

(setq yas-triggers-in-field nil)
(setq yas-snippet-dirs '("~/.emacs.d/snippets/"))

(yas-global-mode 1)
(yas-reload-all)

(use-package nasm-mode
  :ensure t
  :mode ("\\.asm\\'" . nasm-mode)
  :config
  (setq nasm-indent-level 4))

(use-package lsp-mode
  :ensure t
  :hook ((lsp-mode . lsp-enable-which-key-integration))
  :config (setq lsp-completion-enable-additional-text-edit nil))
(use-package lsp-ui
  :commands lsp-ui-mode
  :ensure t)
(use-package ccls
  :ensure t
  :config
  (setq ccls-executable "ccls")
  (setq lsp-prefer-flymake nil)
  (setq-default flycheck-disabled-checkers '(c/c++-clang c/c++-cppcheck c/c++-gcc))
  :hook ((c-mode c++-mode objc-mode) .
         (lambda () (require 'ccls) (lsp))))
(use-package flycheck
  :ensure t)
(use-package yasnippet
  :ensure t
  :config (yas-global-mode))
(use-package which-key
  :ensure t
  :config (which-key-mode))
(use-package helm-lsp
  :ensure t)
(use-package helm
  :ensure t
  :config (helm-mode))
(use-package lsp-treemacs
  :ensure t)

(use-package haskell-mode
  :ensure t)

(use-package eglot
  :ensure t
  :hook (haskell-mode . eglot-ensure)
  :config
  (setq-default eglot-workspace-configuration
                '(:haskell (:plugin (:stan (:globalOn t))
                                    :formattingProvider "ormolu")))
  :custom
  (eglot-autoshutdown t)  ;; shutdown language server after closing last file
  (eglot-confirm-server-initiated-edits nil)  ;; allow edits without confirmation
  )

(use-package flymake
  :ensure nil
  :bind (:map global-map
              ("M-n" . #'flymake-goto-next-error)
              ("M-p" . #'flymake-goto-prev-error))
  :custom
  (flymake-show-diagnostics-at-end-of-line t)
  ;; (flymake-show-diagnostics-at-end-of-line 'short)
  )

(use-package org
  :mode  ("\\.org\\'" . org-mode)
         ("\\org.gpg\\'" . org-mode)
  :config
  
  (setq org-confirm-babel-evaluate nil)
  (setq org-hide-block-startup t)

  (setq epa-file-cache-passphrase-for-symmetric-encryption t)

  ;; turn off 'org-indent-mode' by default
  (setq org-indent-mode nil)
  (setq org-export-with-sub-superscripts nil)
)

(use-package ob-go
)

(org-babel-do-load-languages
     'org-babel-load-languages
     '((python . t)
       (go . t)
       (shell . t)
       ))

(use-package ob-async 
    :after ob
)

;; Agenda
;; include all .org files from notes dir in agenda
(setq org-agenda-files '("~/notes/agenda.org"))
;;Show next 10 days, not only this week
(setq org-agenda-span 10)
;;show agenda since today 
(setq org-agenda-start-on-weekday nil)

;;Any keywords can be used here
(setq org-todo-keywords
      '((sequence "TODO" "BACKLOG" "HOLD" "CANCELED" "|" "DONE" )))

(setq org-todo-keyword-faces
      '(
        ("TODO" . (:foreground "SpringGreen3" :weight bold))
        ("BACKLOG" . (:foreground "royal blue" :weight bold))
        ("HOLD" . (:foreground "gold3" :weight bold))
        ("CANCELED" . (:foreground "OrangeRed4" :weight bold))
        ))


;;save clocks history between sessions
;; clock-in C-c C-x C-i
;; clock-out C-c C-x C-o
  (setq org-clock-persist 'history)
  (org-clock-persistence-insinuate)

(setq epa-pinentry-mode 'loopback)

;;Org-bullets
;;nice looking lists in org-mode with UTF-8 characters
(use-package org-bullets
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

)

(use-package vertico
    :init
  (vertico-mode))

(use-package treemacs
  :ensure t
  :defer t
  :init
  :config
  (setq treemacs-collapse-dirs                   3
        treemacs-deferred-git-apply-delay        0.5
        treemacs-directory-name-transformer      #'identity
        treemacs-display-in-side-window          t
        treemacs-eldoc-display                   'simple
        treemacs-file-event-delay                2000
        treemacs-file-extension-regex            treemacs-last-period-regex-value
        treemacs-file-follow-delay               0.2
        treemacs-file-name-transformer           #'identity
        treemacs-follow-after-init               t
        treemacs-expand-after-init               t
        treemacs-find-workspace-method           'find-for-file-or-pick-first
        treemacs-git-command-pipe                ""
        treemacs-goto-tag-strategy               'refetch-index
        treemacs-header-scroll-indicators        '(nil . "^^^^^^")
        treemacs-hide-dot-git-directory          t
        treemacs-indentation                     2
        treemacs-indentation-string              " "
        treemacs-is-never-other-window           nil
        treemacs-max-git-entries                 5000
        treemacs-missing-project-action          'ask
        treemacs-move-files-by-mouse-dragging    t
        treemacs-move-forward-on-expand          nil
        treemacs-no-png-images                   nil
        treemacs-no-delete-other-windows         t
        treemacs-project-follow-cleanup          nil
        treemacs-persist-file                    (expand-file-name ".cache/treemacs-persist" user-emacs-directory)
        treemacs-position                        'left
        treemacs-read-string-input               'from-child-frame
        treemacs-recenter-distance               0.1
        treemacs-recenter-after-file-follow      nil
        treemacs-recenter-after-tag-follow       nil
        treemacs-recenter-after-project-jump     'always
        treemacs-recenter-after-project-expand   'on-distance
        treemacs-litter-directories              '("/node_modules" "/.venv" "/.cask")
        treemacs-project-follow-into-home        nil
        treemacs-show-cursor                     nil
        treemacs-show-hidden-files               t
        treemacs-silent-filewatch                nil
        treemacs-silent-refresh                  nil
        treemacs-sorting                         'alphabetic-asc
        treemacs-select-when-already-in-treemacs 'move-back
        treemacs-space-between-root-nodes        t
        treemacs-tag-follow-cleanup              t
        treemacs-tag-follow-delay                1.5
        treemacs-text-scale                      nil
        treemacs-user-mode-line-format           nil
        treemacs-user-header-line-format         nil
        treemacs-wide-toggle-width               70
        treemacs-width                           35
        treemacs-width-increment                 1
        treemacs-width-is-initially-locked       t
        treemacs-workspace-switch-cleanup        nil)

  (treemacs-follow-mode t)
  (treemacs-filewatch-mode t)
  (treemacs-fringe-indicator-mode 'always)
  (when (executable-find "git")
    (treemacs-git-mode 'deferred))
  (treemacs-hide-gitignored-files-mode nil))

(dolist (package '(slime paredit rainbow-delimiters))
  (unless (package-installed-p package)
    (package-install package)))

(add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook 'enable-paredit-mode)
(add-hook 'ielm-mode-hook 'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook 'enable-paredit-mode)
(add-hook 'lisp-mode-hook 'enable-paredit-mode)
(add-hook 'slime-repl-mode-hook 'enable-paredit-mode)

(require 'paredit)
(defun override-slime-del-key ()
  (define-key slime-repl-mode-map
    (read-kbd-macro paredit-backward-delete-key) nil))
(add-hook 'slime-repl-mode-hook 'override-slime-del-key)

(add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)
(add-hook 'ielm-mode-hook 'rainbow-delimiters-mode)
(add-hook 'lisp-interaction-mode-hook 'rainbow-delimiters-mode)
(add-hook 'lisp-mode-hook 'rainbow-delimiters-mode)
(add-hook 'slime-repl-mode-hook 'rainbow-delimiters-mode)

(require 'rainbow-delimiters)
(set-face-foreground 'rainbow-delimiters-depth-1-face "#c66")  ; red
(set-face-foreground 'rainbow-delimiters-depth-2-face "#6c6")  ; green
(set-face-foreground 'rainbow-delimiters-depth-3-face "#69f")  ; blue
(set-face-foreground 'rainbow-delimiters-depth-4-face "#cc6")  ; yellow
(set-face-foreground 'rainbow-delimiters-depth-5-face "#6cc")  ; cyan
(set-face-foreground 'rainbow-delimiters-depth-6-face "#c6c")  ; magenta
(set-face-foreground 'rainbow-delimiters-depth-7-face "#ccc")  ; light gray
(set-face-foreground 'rainbow-delimiters-depth-8-face "#999")  ; medium gray
(set-face-foreground 'rainbow-delimiters-depth-9-face "#666")  ; dark gray

(use-package vertico-posframe
  :after vertico
  :custom
  (vertico-posframe-parameters
   '((left-fringe . 8)
     (right-fringe . 8)))
  :config
  (vertico-posframe-mode 1))

;; LSP Mode
(use-package lsp-mode
  :ensure t
  :init
  (setq lsp-keymap-prefix "C-c l")
  :hook ((python-mode . lsp)))

(use-package lsp-ui
  :commands lsp-ui-mode)

(use-package lsp-pyright
  :after lsp-mode
  :hook (python-mode . (lambda ()
                         (require 'lsp-pyright)
                         (lsp))))

;;; This will enable emacs to compile a simple cpp single file without any makefile by just pressing [f9] key
(defun code-compile()
  (interactive)
  (unless (file-exists-p "Makefile")
    (set (make-local-variable 'compile-command)
	 (let ((file (file-name-nondirectory buffer-file-name)))
	   (format "%s -o %s %s"
		   (if (equal (file-name-extension file) "cpp") "g++" "gcc")
		   (file-name-sans-extension file)
		   file)))
    (compile compile-command)))
(global-set-key [f9] 'code-compile)


(global-set-key (kbd "C-c C-e") 'eval-last-sexp)
(global-set-key (kbd "C-c C-r") 'eval-region)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ignored-local-variable-values
   '((eval and buffer-file-name
           (not
            (eq major-mode 'package-recipe-mode))
           (or
            (require 'package-recipe-mode nil t)
            (let
                ((load-path
                  (cons "../package-build" load-path)))
              (require 'package-recipe-mode nil t)))
           (package-recipe-mode))
     (eval when
           (fboundp 'rainbow-mode)
           (rainbow-mode 1))))
 '(org-agenda-files '("~/notes/agenda.org"))
 '(package-selected-packages
   '(vertico-prescient neotree package-lint org-preview-html doom catppuccin-theme dashboard vterm-toggle vterm java-snippets ac-haskell-process auto-complete haskell-mode markdown-mode gruber-darker-theme gams-ac gams-mode ghc-imported-from ghci-completion github-dark-vscode-theme gruvbox-theme lsp-pyright lsp-ui lsp-mode vertico-posframe vertico treemacs all-the-icons doom-themes hydra))
 '(warning-suppress-log-types
   '((comp)
     (comp)
     (comp)
     (comp)
     (comp)
     (comp)
     (comp)
     (comp)
     (comp)
     (emacs)
     (emacs)))
 '(warning-suppress-types
   '((comp)
     (comp)
     (comp)
     (comp)
     (comp)
     (comp)
     (comp)
     (comp)
     (emacs)
     (emacs))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
