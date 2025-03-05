;;; init-keymaps.el --- general keymaps -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(global-set-key (kbd "C-s") 'save-buffer)
(global-set-key (kbd "C-k") 'kill-buffer)
(global-set-key (kbd "C-c s") 'my-eshell-split-window) 
(global-set-key (kbd "C-t") 'treemacs)
(global-set-key (kbd "C-w") 'delete-window)
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
(global-unset-key (kbd "C-z"))

;; Elisp mode specific keybindings
(with-eval-after-load 'lisp-mode
  (define-key emacs-lisp-mode-map (kbd "C-i e") 'my-ielm-split-window)
  (define-key emacs-lisp-mode-map (kbd "C-c e") 'eval-buffer))

(global-set-key (kbd "C-c D") 'org-todo)
(global-set-key (kbd "C-D") 'dired-create-directory)
(global-set-key (kbd "C-F") 'dired-create-empty-file)
(global-set-key (kbd "C-.") 'isearch-forward)
(global-set-key (kbd "C-c o") 'bgc/open-emacs-config)
(global-set-key (kbd "C-c r") 'bgc/reload-settings)
(global-set-key (kbd "C-c p") 'bgc/emacs-personal-files)
(global-set-key (kbd "C-c f") 'bgc/open-dired)

(provide 'init-keymaps)
