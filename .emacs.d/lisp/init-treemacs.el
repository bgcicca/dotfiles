;;; init-treemacs.el --- File tree explorer -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package treemacs
  :defer t
  :commands treemacs treemacs-find-file
  :custom (treemacs-width 40)
  :hook (treemacs-mode . (lambda () (display-line-numbers-mode -1))))

(use-package treemacs-projectile
  :after treemacs projectile)

(use-package treemacs-magit
  :after treemacs magit)

(provide 'init-treemacs)
