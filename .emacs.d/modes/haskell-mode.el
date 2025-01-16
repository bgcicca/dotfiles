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
