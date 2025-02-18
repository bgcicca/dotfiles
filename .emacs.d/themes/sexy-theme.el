;;; sexy-theme.el --- Sexy color theme for Emacs 24+.

;; Copyright (C) 2025 Bruno Ciccarino a.k.a cicca
;; Copyright (C) 2013-2016 Alexey Kutepov a.k.a rexim
;; Copyright (C) 2009-2010 Jason R. Blevins

;; Author: Bruno Ciccarino <brunociccarinoo@gmail.com>
;; URL: http://github.com/bgcicca/sexy-theme
;; Version: 0.1

;; Permission is hereby granted, free of charge, to any person
;; obtaining a copy of this software and associated documentation
;; files (the "Software"), to deal in the Software without
;; restriction, including without limitation the rights to use, copy,
;; modify, merge, publish, distribute, sublicense, and/or sell copies
;; of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:

;; The above copyright notice and this permission notice shall be
;; included in all copies or substantial portions of the Software.

;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
;; NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
;; BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
;; ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
;; CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;; SOFTWARE.

;;; Commentary:
;;
;; Sexy color theme for Emacs by Bruno Ciccarino. A strong colors
;; variant of the Gruber Darker theme for BBEdit by rexim. Adapted
;; for deftheme and extended by Bruno Ciccarino a.k.a. cicca.


(deftheme sexy
    "Sexy color theme for Emacs 24+")

;; Please, install rainbow-mode.
;; Colors with +x are lighter. Colors with -x are darker.
(let ((sexy-fg        "#e4e4ef")
      (sexy-fg+1      "#f4f4ff")
      (sexy-fg+2      "#f5f5f5")
      (sexy-white     "#ffffff")
      (sexy-black     "#000000")
      (sexy-bg-1      "#101010")
      (sexy-bg        "#0e070d")
      (sexy-bg+1      "#282828")
      (sexy-bg+2      "#453d41")
      (sexy-bg+3      "#484848")
      (sexy-bg+4      "#52494e")
      (sexy-red-1     "#c73c3f")
      (sexy-red       "#f43841")
      (sexy-red+1     "#ff4f58")
      (sexy-green     "#73c936")
      (sexy-yellow    "#ffdd33")
      (sexy-brown     "#cc8c3c")
      (sexy-quartz    "#95a99f")
      (sexy-niagara-2 "#303540")
      (sexy-niagara-1 "#565f73")
      (sexy-niagara   "#96a6c8")
      (sexy-wisteria  "#9e95c7")
      )
  (custom-theme-set-variables
   'sexy
   '(frame-brackground-mode (quote dark)))

  (custom-theme-set-faces
   'sexy

   ;; Agda2
   `(agda2-highlight-datatype-face ((t (:foreground ,sexy-quartz))))
   `(agda2-highlight-primitive-type-face ((t (:foreground ,sexy-quartz))))
   `(agda2-highlight-function-face ((t (:foreground ,sexy-niagara))))
   `(agda2-highlight-keyword-face ((t ,(list :foreground sexy-yellow
                                             :bold t))))
   `(agda2-highlight-inductive-constructor-face ((t (:foreground ,sexy-green))))
   `(agda2-highlight-number-face ((t (:foreground ,sexy-wisteria))))

   ;; AUCTeX
   `(font-latex-bold-face ((t (:foreground ,sexy-quartz :bold t))))
   `(font-latex-italic-face ((t (:foreground ,sexy-quartz :italic t))))
   `(font-latex-math-face ((t (:foreground ,sexy-green))))
   `(font-latex-sectioning-5-face ((t ,(list :foreground sexy-niagara
                                             :bold t))))
   `(font-latex-slide-title-face ((t (:foreground ,sexy-niagara))))
   `(font-latex-string-face ((t (:foreground ,sexy-green))))
   `(font-latex-warning-face ((t (:foreground ,sexy-red))))

   ;; Basic Coloring (or Uncategorized)
   `(border ((t ,(list :background sexy-bg-1
                       :foreground sexy-bg+2))))
   `(cursor ((t (:background ,sexy-yellow))))
   `(default ((t ,(list :foreground sexy-fg
                        :background sexy-bg))))
   `(fringe ((t ,(list :background nil
                       :foreground sexy-bg+2))))
   `(vertical-border ((t ,(list :foreground sexy-bg+2))))
   `(link ((t (:foreground ,sexy-niagara :underline t))))
   `(link-visited ((t (:foreground ,sexy-wisteria :underline t))))
   `(match ((t (:background ,sexy-bg+4))))
   `(shadow ((t (:foreground ,sexy-bg+4))))
   `(minibuffer-prompt ((t (:foreground ,sexy-niagara))))
   `(region ((t (:background ,sexy-bg+3 :foreground nil))))
   `(secondary-selection ((t ,(list :background sexy-bg+3
                                    :foreground nil))))
   `(trailing-whitespace ((t ,(list :foreground sexy-black
                                    :background sexy-red))))
   `(tooltip ((t ,(list :background sexy-bg+4
                        :foreground sexy-white))))

   ;; Calendar
   `(holiday-face ((t (:foreground ,sexy-red))))

   ;; Compilation
   `(compilation-info ((t ,(list :foreground sexy-green
                                 :inherit 'unspecified))))
   `(compilation-warning ((t ,(list :foreground sexy-brown
                                    :bold t
                                    :inherit 'unspecified))))
   `(compilation-error ((t (:foreground ,sexy-red+1))))
   `(compilation-mode-line-fail ((t ,(list :foreground sexy-red
                                           :weight 'bold
                                           :inherit 'unspecified))))
   `(compilation-mode-line-exit ((t ,(list :foreground sexy-green
                                           :weight 'bold
                                           :inherit 'unspecified))))

   ;; Completion
   `(completions-annotations ((t (:inherit 'shadow))))

   ;; Custom
   `(custom-state ((t (:foreground ,sexy-green))))

   ;; Diff
   `(diff-removed ((t ,(list :foreground sexy-red+1
                             :background nil))))
   `(diff-added ((t ,(list :foreground sexy-green
                           :background nil))))

   ;; Dired
   `(dired-directory ((t (:foreground ,sexy-niagara :weight bold))))
   `(dired-ignored ((t ,(list :foreground sexy-quartz
                              :inherit 'unspecified))))

   ;; Ebrowse
   `(ebrowse-root-class ((t (:foreground ,sexy-niagara :weight bold))))
   `(ebrowse-progress ((t (:background ,sexy-niagara))))

   ;; Egg
   `(egg-branch ((t (:foreground ,sexy-yellow))))
   `(egg-branch-mono ((t (:foreground ,sexy-yellow))))
   `(egg-diff-add ((t (:foreground ,sexy-green))))
   `(egg-diff-del ((t (:foreground ,sexy-red))))
   `(egg-diff-file-header ((t (:foreground ,sexy-wisteria))))
   `(egg-help-header-1 ((t (:foreground ,sexy-yellow))))
   `(egg-help-header-2 ((t (:foreground ,sexy-niagara))))
   `(egg-log-HEAD-name ((t (:box (:color ,sexy-fg)))))
   `(egg-reflog-mono ((t (:foreground ,sexy-niagara-1))))
   `(egg-section-title ((t (:foreground ,sexy-yellow))))
   `(egg-text-base ((t (:foreground ,sexy-fg))))
   `(egg-term ((t (:foreground ,sexy-yellow))))

   ;; ERC
   `(erc-notice-face ((t (:foreground ,sexy-wisteria))))
   `(erc-timestamp-face ((t (:foreground ,sexy-green))))
   `(erc-input-face ((t (:foreground ,sexy-red+1))))
   `(erc-my-nick-face ((t (:foreground ,sexy-red+1))))

   ;; EShell
   `(eshell-ls-backup ((t (:foreground ,sexy-quartz))))
   `(eshell-ls-directory ((t (:foreground ,sexy-niagara))))
   `(eshell-ls-executable ((t (:foreground ,sexy-green))))
   `(eshell-ls-symlink ((t (:foreground ,sexy-yellow))))

   ;; Font Lock
   `(font-lock-builtin-face ((t (:foreground ,sexy-yellow))))
   `(font-lock-comment-face ((t (:foreground ,sexy-brown))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,sexy-brown))))
   `(font-lock-constant-face ((t (:foreground ,sexy-quartz))))
   `(font-lock-doc-face ((t (:foreground ,sexy-green))))
   `(font-lock-doc-string-face ((t (:foreground ,sexy-green))))
   `(font-lock-function-name-face ((t (:foreground ,sexy-niagara))))
   `(font-lock-keyword-face ((t (:foreground ,sexy-yellow :bold t))))
   `(font-lock-preprocessor-face ((t (:foreground ,sexy-quartz))))
   `(font-lock-reference-face ((t (:foreground ,sexy-quartz))))
   `(font-lock-string-face ((t (:foreground ,sexy-green))))
   `(font-lock-type-face ((t (:foreground ,sexy-quartz))))
   `(font-lock-variable-name-face ((t (:foreground ,sexy-fg+1))))
   `(font-lock-warning-face ((t (:foreground ,sexy-red))))

   ;; Flymake
   `(flymake-errline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,sexy-red)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:foreground ,sexy-red :weight bold :underline t))))
   `(flymake-warnline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,sexy-yellow)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:forground ,sexy-yellow :weight bold :underline t))))
   `(flymake-infoline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,sexy-green)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:forground ,sexy-green :weight bold :underline t))))

   ;; Flyspell
   `(flyspell-incorrect
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,sexy-red) :inherit unspecified))
      (t (:foreground ,sexy-red :weight bold :underline t))))
   `(flyspell-duplicate
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,sexy-yellow) :inherit unspecified))
      (t (:foreground ,sexy-yellow :weight bold :underline t))))

   ;; Helm
   `(helm-candidate-number ((t ,(list :background sexy-bg+2
                                      :foreground sexy-yellow
                                      :bold t))))
   `(helm-ff-directory ((t ,(list :foreground sexy-niagara
                                  :background sexy-bg
                                  :bold t))))
   `(helm-ff-executable ((t (:foreground ,sexy-green))))
   `(helm-ff-file ((t (:foreground ,sexy-fg :inherit unspecified))))
   `(helm-ff-invalid-symlink ((t ,(list :foreground sexy-bg
                                        :background sexy-red))))
   `(helm-ff-symlink ((t (:foreground ,sexy-yellow :bold t))))
   `(helm-selection-line ((t (:background ,sexy-bg+1))))
   `(helm-selection ((t (:background ,sexy-bg+1 :underline nil))))
   `(helm-source-header ((t ,(list :foreground sexy-yellow
                                   :background sexy-bg
                                   :box (list :line-width -1
                                              :style 'released-button)))))

   ;; Ido
   `(ido-first-match ((t (:foreground ,sexy-yellow :bold nil))))
   `(ido-only-match ((t (:foreground ,sexy-brown :weight bold))))
   `(ido-subdir ((t (:foreground ,sexy-niagara :weight bold))))

   ;; Info
   `(info-xref ((t (:foreground ,sexy-niagara))))
   `(info-visited ((t (:foreground ,sexy-wisteria))))

   ;; Jabber
   `(jabber-chat-prompt-foreign ((t ,(list :foreground sexy-quartz
                                           :bold nil))))
   `(jabber-chat-prompt-local ((t (:foreground ,sexy-yellow))))
   `(jabber-chat-prompt-system ((t (:foreground ,sexy-green))))
   `(jabber-rare-time-face ((t (:foreground ,sexy-green))))
   `(jabber-roster-user-online ((t (:foreground ,sexy-green))))
   `(jabber-activity-face ((t (:foreground ,sexy-red))))
   `(jabber-activity-personal-face ((t (:foreground ,sexy-yellow :bold t))))

   ;; Line Highlighting
   `(highlight ((t (:background ,sexy-bg+1 :foreground nil))))
   `(highlight-current-line-face ((t ,(list :background sexy-bg+1
                                            :foreground nil))))

   ;; line numbers
   `(line-number ((t (:inherit default :foreground ,sexy-bg+4))))
   `(line-number-current-line ((t (:inherit line-number :foreground ,sexy-yellow))))

   ;; Linum
   `(linum ((t `(list :foreground sexy-quartz
                      :background sexy-bg))))

   ;; Magit
   `(magit-branch ((t (:foreground ,sexy-niagara))))
   `(magit-diff-hunk-header ((t (:background ,sexy-bg+2))))
   `(magit-diff-file-header ((t (:background ,sexy-bg+4))))
   `(magit-log-sha1 ((t (:foreground ,sexy-red+1))))
   `(magit-log-author ((t (:foreground ,sexy-brown))))
   `(magit-log-head-label-remote ((t ,(list :foreground sexy-green
                                            :background sexy-bg+1))))
   `(magit-log-head-label-local ((t ,(list :foreground sexy-niagara
                                           :background sexy-bg+1))))
   `(magit-log-head-label-tags ((t ,(list :foreground sexy-yellow
                                          :background sexy-bg+1))))
   `(magit-log-head-label-head ((t ,(list :foreground sexy-fg
                                          :background sexy-bg+1))))
   `(magit-item-highlight ((t (:background ,sexy-bg+1))))
   `(magit-tag ((t ,(list :foreground sexy-yellow
                          :background sexy-bg))))
   `(magit-blame-heading ((t ,(list :background sexy-bg+1
                                    :foreground sexy-fg))))

   ;; Message
   `(message-header-name ((t (:foreground ,sexy-green))))

   ;; Mode Line
   `(mode-line ((t ,(list :background sexy-bg+1
                          :foreground sexy-white))))
   `(mode-line-buffer-id ((t ,(list :background sexy-bg+1
                                    :foreground sexy-white))))
   `(mode-line-inactive ((t ,(list :background sexy-bg+1
                                   :foreground sexy-quartz))))

   ;; Neo Dir
   `(neo-dir-link-face ((t (:foreground ,sexy-niagara))))

   ;; Org Mode
   `(org-agenda-structure ((t (:foreground ,sexy-niagara))))
   `(org-column ((t (:background ,sexy-bg-1))))
   `(org-column-title ((t (:background ,sexy-bg-1 :underline t :weight bold))))
   `(org-done ((t (:foreground ,sexy-green))))
   `(org-todo ((t (:foreground ,sexy-red-1))))
   `(org-upcoming-deadline ((t (:foreground ,sexy-yellow))))

   ;; Search
   `(isearch ((t ,(list :foreground sexy-black
                        :background sexy-fg+2))))
   `(isearch-fail ((t ,(list :foreground sexy-black
                             :background sexy-red))))
   `(isearch-lazy-highlight-face ((t ,(list
                                       :foreground sexy-fg+1
                                       :background sexy-niagara-1))))

   ;; Sh
   `(sh-quoted-exec ((t (:foreground ,sexy-red+1))))

   ;; Show Paren
   `(show-paren-match-face ((t (:background ,sexy-bg+4))))
   `(show-paren-mismatch-face ((t (:background ,sexy-red-1))))

   ;; Slime
   `(slime-repl-inputed-output-face ((t (:foreground ,sexy-red))))

   ;; Tuareg
   `(tuareg-font-lock-governing-face ((t (:foreground ,sexy-yellow))))

   ;; Speedbar
   `(speedbar-directory-face ((t ,(list :foreground sexy-niagara
                                        :weight 'bold))))
   `(speedbar-file-face ((t (:foreground ,sexy-fg))))
   `(speedbar-highlight-face ((t (:background ,sexy-bg+1))))
   `(speedbar-selected-face ((t (:foreground ,sexy-red))))
   `(speedbar-tag-face ((t (:foreground ,sexy-yellow))))

   ;; Which Function
   `(which-func ((t (:foreground ,sexy-wisteria))))

   ;; Whitespace
   `(whitespace-space ((t ,(list :background sexy-bg
                                 :foreground sexy-bg+1))))
   `(whitespace-tab ((t ,(list :background sexy-bg
                               :foreground sexy-bg+1))))
   `(whitespace-hspace ((t ,(list :background sexy-bg
                                  :foreground sexy-bg+2))))
   `(whitespace-line ((t ,(list :background sexy-bg+2
                                :foreground sexy-red+1))))
   `(whitespace-newline ((t ,(list :background sexy-bg
                                   :foreground sexy-bg+2))))
   `(whitespace-trailing ((t ,(list :background sexy-red
                                    :foreground sexy-red))))
   `(whitespace-empty ((t ,(list :background sexy-yellow
                                 :foreground sexy-yellow))))
   `(whitespace-indentation ((t ,(list :background sexy-yellow
                                       :foreground sexy-red))))
   `(whitespace-space-after-tab ((t ,(list :background sexy-yellow
                                           :foreground sexy-yellow))))
   `(whitespace-space-before-tab ((t ,(list :background sexy-brown
                                            :foreground sexy-brown))))

   ;; tab-bar
   `(tab-bar ((t (:background ,sexy-bg+1 :foreground ,sexy-bg+4))))
   `(tab-bar-tab ((t (:background nil :foreground ,sexy-yellow :weight bold))))
   `(tab-bar-tab-inactive ((t (:background nil))))

   ;; vterm / ansi-term
   `(term-color-black ((t (:foreground ,sexy-bg+3 :background ,sexy-bg+4))))
   `(term-color-red ((t (:foreground ,sexy-red-1 :background ,sexy-red-1))))
   `(term-color-green ((t (:foreground ,sexy-green :background ,sexy-green))))
   `(term-color-blue ((t (:foreground ,sexy-niagara :background ,sexy-niagara))))
   `(term-color-yellow ((t (:foreground ,sexy-yellow :background ,sexy-yellow))))
   `(term-color-magenta ((t (:foreground ,sexy-wisteria :background ,sexy-wisteria))))
   `(term-color-cyan ((t (:foreground ,sexy-quartz :background ,sexy-quartz))))
   `(term-color-white ((t (:foreground ,sexy-fg :background ,sexy-white))))

   ;; company-mode
   `(company-tooltip ((t (:foreground ,sexy-fg :background ,sexy-bg+1))))
   `(company-tooltip-annotation ((t (:foreground ,sexy-brown :background ,sexy-bg+1))))
   `(company-tooltip-annotation-selection ((t (:foreground ,sexy-brown :background ,sexy-bg-1))))
   `(company-tooltip-selection ((t (:foreground ,sexy-fg :background ,sexy-bg-1))))
   `(company-tooltip-mouse ((t (:background ,sexy-bg-1))))
   `(company-tooltip-common ((t (:foreground ,sexy-green))))
   `(company-tooltip-common-selection ((t (:foreground ,sexy-green))))
   `(company-scrollbar-fg ((t (:background ,sexy-bg-1))))
   `(company-scrollbar-bg ((t (:background ,sexy-bg+2))))
   `(company-preview ((t (:background ,sexy-green))))
   `(company-preview-common ((t (:foreground ,sexy-green :background ,sexy-bg-1))))

   ;; Proof General
   `(proof-locked-face ((t (:background ,sexy-niagara-2))))

   ;; Orderless
   `(orderless-match-face-0 ((t (:foreground ,sexy-yellow))))
   `(orderless-match-face-1 ((t (:foreground ,sexy-green))))
   `(orderless-match-face-2 ((t (:foreground ,sexy-brown))))
   `(orderless-match-face-3 ((t (:foreground ,sexy-quartz))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'sexy)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; sexy-theme.el ends here.
