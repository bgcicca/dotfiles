;;; init-dashboard.el --- Dashboard customisations -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package dashboard
  :ensure t
  :config

  (dashboard-setup-startup-hook)

  (setq dashboard-banner-logo-title
        "An idiot admires complexity, a genius admires simplicity.\n― Terry Davis")


  (setq dashboard-items '((recents   . 5)
                          (bookmarks . 5)
                          (projects  . 5)
                          (agenda    . 5)
                          (registers . 5)))

  (setq dashboard-center-content t)
  (setq dashboard-vertically-center-content t)

  (setq dashboard-show-shortcuts t))

(provide 'init-dashboard)
