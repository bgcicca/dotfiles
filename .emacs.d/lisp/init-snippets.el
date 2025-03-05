;;; init-snippets.el --- General snippets -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package yasnippet
  :ensure t
  :custom
  (yas-prompt-functions '(yas-completing-prompt))
  ;; :config
  ;; (yas-reload-all)
  :hook
  ((prog-mode feature-mode)  . yas-minor-mode))

(use-package doom-snippets
  :defer t
  :quelpa
  (doom-snippets
   :repo "hlissner/doom-snippets"
   :fetcher github
   :files ("*" (:exclude ".*" "README.md")))
  :after yasnippet)

(provide 'init-snippets)
