;;; init-haskell.el --- Haskell mode -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package haskell-mode
  :defer t
  :ensure t)

(use-package eglot
  :defer t
  :ensure t
  :hook (haskell-mode . eglot-ensure)
  :config
  (setq-default eglot-workspace-configuration
                '(:haskell (:plugin (:stan (:globalOn t))
                                    :formattingProvider "ormolu")))
  :custom
  (eglot-autoshutdown t)  
  (eglot-confirm-server-initiated-edits nil))

(provide 'init-haskell)
