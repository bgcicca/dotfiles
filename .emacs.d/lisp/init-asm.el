;;; init-asm.el --- Assembly mode -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package nasm-mode
  :ensure t
  :mode ("\\.asm\\'" . nasm-mode)
  :config
  (setq nasm-indent-level 4))
(provide 'init-asm)
