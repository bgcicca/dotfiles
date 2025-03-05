(use-package projectile)
(use-package flycheck)
(use-package lsp-mode
  :defer t
  :hook
  ((lsp-mode . lsp-enable-which-key-integration))
  :config
  (setq lsp-completion-enable-additional-text-edit nil))
(use-package company)
(use-package lsp-ui)
(use-package which-key
  :defer t
  :config
  (which-key-mode))
(use-package lsp-java
  :config
  (add-hook 'java-mode-hook 'lsp))
(use-package dap-mode
  :after lsp-mode
  :config
  (dap-auto-configure-mode))
(use-package dap-java
  :defer t
  :ensure nil)
(use-package helm-lsp)
(use-package helm
  :defer t
  :config (helm-mode))

(provide 'init-java)
