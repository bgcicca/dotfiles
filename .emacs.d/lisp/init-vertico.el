;;; init-vertico.el --- complete engine -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package vertico
  :ensure t
  :commands vertico-mode
  :custom 
  (vertico-cycle t)
  :init
  (vertico-mode))
  
(use-package vertico-posframe
  :ensure t
  :after vertico
  :custom
  (vertico-posframe-parameters
   '((left-fringe . 8)
     (right-fringe . 8)))
  :config
  (vertico-posframe-mode 1))

(provide 'init-vertico)
