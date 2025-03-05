;;; init-settings.el --- Dired general settings for editor -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(set-fringe-mode 15)
(electric-indent-mode 1)
(column-number-mode t)
(global-display-line-numbers-mode t)
(global-hl-line-mode t)
(global-visual-line-mode t)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(tooltip-mode -1)
(menu-bar-mode 0)
(electric-pair-mode t)

(defvar comp-deferred-compliation)
(setq inhibit-startup-message t)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq initial-scratch-message nil)
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq treemacs-persist-file nil)
(setq comp-deferred-compilation t)
(setq package-enable-at-startup nil)
(setq frame-inhibit-implied-resize t)
(setq site-run-file nil)
(setq inhibit-compacting-font-caches t)
(setq native-comp-async-report-warnings-errors nil)
(setq-default indent-tabs-mode nil)

(setq auto-mode-alist (append '(("\\.scm$" . scheme-mode)) auto-mode-alist))
(setq auto-mode-alist (append '(("\\.lisp$" . lisp-mode)) auto-mode-alist))
(add-to-list 'auto-mode-alist '("\\.el\\'" . emacs-lisp-mode))

;; Set frame transparency and maximize windows by default
;; Uncomment the following lines if you want to add transparency to your editor
;; (set-frame-parameter (selected-frame) 'alpha '(90 . 90))
;; (add-to-list 'default-frame-alist '(alpha . (90 . 90)))
;; (set-frame-parameter (selected-frame) 'fullscreen 'maximized)
;; (add-to-list 'default-frame-alist '(fullscreen . maximized))

(provide 'init-settings)
