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
(package-install 'doom-themes)

(add-to-list 'custom-theme-load-path
             "~/.emacs.d/themes/")
;; (load-theme 'gruber-darker t)

;; (load-theme 'catppuccin :no-confirm)

(load-theme 'sexy t)

(unless (package-installed-p 'hydra)
  (package-refresh-contents)
  (package-install 'hydra))

(global-set-key (kbd "C-c b") 'load-themes/body)

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

(load-file "~/.emacs.d/modes/haskell-mode.el")
(load-file "~/.emacs.d/modes/c-mode.el")
(load-file "~/.emacs.d/modes/asm-mode.el")
(load-file "~/.emacs.d/slime/config.el")
(load-file "~/.emacs.d/modes/org-mode.el")

(require 'yasnippet)

(setq yas-triggers-in-field nil)
(setq yas-snippet-dirs '("~/.emacs.d/snippets/"))

(yas-global-mode 1)
(yas-reload-all)

(use-package projectile)
(use-package flycheck)
(use-package yasnippet :config (yas-global-mode))
(use-package lsp-mode :hook ((lsp-mode . lsp-enable-which-key-integration))
  :config (setq lsp-completion-enable-additional-text-edit nil))
(use-package hydra)
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


(defun my-eshell-split-window ()
  
  (interactive)
  (split-window-below)         
  (other-window 1)             
  (eshell))                    

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

(use-package all-the-icons
    :ensure t)

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

(use-package vertico
    :init
  (vertico-mode))

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
   '(neotree package-lint org-preview-html doom catppuccin-theme dashboard vterm-toggle vterm java-snippets ac-haskell-process auto-complete haskell-mode markdown-mode gruber-darker-theme gams-ac gams-mode ghc-imported-from ghci-completion github-dark-vscode-theme gruvbox-theme lsp-pyright lsp-ui lsp-mode vertico-posframe vertico treemacs all-the-icons doom-themes hydra))
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
