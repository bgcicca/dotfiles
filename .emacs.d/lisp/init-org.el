;;; init-org.el --- Org mode -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package org
  :defer t
  :mode  ("\\.org\\'" . org-mode)
  ("\\org.gpg\\'" . org-mode)
  :config
  
  (setq org-hide-block-startup t)

  (setq epa-file-cache-passphrase-for-symmetric-encryption t)

  ;; turn off 'org-indent-mode' by default
  (setq org-indent-mode nil)
  (setq org-export-with-sub-superscripts nil))

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

(use-package org-bullets
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
)
(provide 'init-org)
