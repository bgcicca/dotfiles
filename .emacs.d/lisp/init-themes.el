;;; init-themes.el --- Themes customisations -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:


(add-to-list 'custom-theme-load-path (expand-file-name "themes" user-emacs-directory))
;; (load-theme 'gruber-darker t)
;; (load-theme 'catppuccin :no-confirm)
(load-theme 'nekonight-storm t)
(provide 'init-themes)
