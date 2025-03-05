;;; init-web-mode.el --- Web mode -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package web-mode
  :defer t
  :commands (web-mode)
  :mode
  ("\\.htm\\'" . web-mode)
  ("\\.html\\'" . web-mode)
  ("\\.xhtml\\'" . web-mode)
  ("\\.ctml\\'" . web-mode)
  :custom
  (web-mode-markup-indent-offset 2)
  (web-mode-css-indent-offset 4)
  (web-mode-code-indent-offset 4)
  (web-mode-style-padding 2)
  (web-mode-script-padding 2))

(use-package rainbow-mode
  :defer t
  :commands (rainbow-mode)
  :hook (css-mode . rainbow-mode))

(provide 'init-web-mode)
