;;; init-symbols.el --- Stub definitions for missing GUI functions -*- lexical-binding: t; -*-

;; In noninteractive mode (or when running Emacs without a GUI), some functions,
;; such as scroll-bar-mode and set-fringe-mode, may not be defined.
;; These stubs prevent errors when loading your configuration in environments
;; where these functions are not available.

(unless (fboundp 'scroll-bar-mode)
  (defun scroll-bar-mode (&rest args)
    "Stub for scroll-bar-mode in noninteractive mode."
    nil))

(unless (fboundp 'set-fringe-mode)
  (defun set-fringe-mode (&rest args)
    "Stub for set-fringe-mode in noninteractive mode."
    nil))

(provide 'init-symbols)
;;; init-symbols.el ends here
