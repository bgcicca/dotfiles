;;; fire-obsidian-theme.el --- Fire-Obsidian color theme.

;; Copyright (C) 2025 Bruno Ciccarino a.k.a cicca
;; Copyright (C) 2013-2016 Alexey Kutepov a.k.a rexim
;; Copyright (C) 2009-2010 Jason R. Blevins

;; Author: Bruno Ciccarino <brunociccarinoo@gmail.com>
;; URL: http://github.com/bgcicca/fire-obsidian-theme
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
;; Fire-Obsidian color theme for Emacs by Bruno Ciccarino. A strong colors
;; variant of the Gruber Dark theme for BBEdit by John Gruber. Adapted
;; for deftheme and extended by Bruno Ciccarino a.k.a. cicca.


(deftheme fire-obsidian
    "Fire-Obsidian color theme for Emacs 24")

;; Please, install rainbow-mode.
;; Colors with +x are lighter. Colors with -x are darker.
(let ((fire-obsidian-fg        "#e4e4ef")
      (fire-obsidian-fg+1      "#f4f4ff")
      (fire-obsidian-fg+2      "#f5f5f5")
      (fire-obsidian-white     "#ffffff")
      (fire-obsidian-black     "#000000")
      (fire-obsidian-bg-1      "#101010")
      (fire-obsidian-bg        "#000000")
      (fire-obsidian-bg+1      "#282828")
      (fire-obsidian-bg+2      "#453d41")
      (fire-obsidian-bg+3      "#484848")
      (fire-obsidian-bg+4      "#52494e")
      (fire-obsidian-red-1     "#c73c3f")
      (fire-obsidian-red       "#f43841")
      (fire-obsidian-red+1     "#ff4f58")
      (fire-obsidian-green     "#73c936")
      (fire-obsidian-yellow    "#ffdd33")
      (fire-obsidian-brown     "#cc8c3c")
      (fire-obsidian-quartz    "#95a99f")
      (fire-obsidian-niagara-2 "#303540")
      (fire-obsidian-niagara-1 "#565f73")
      (fire-obsidian-niagara   "#96a6c8")
      (fire-obsidian-wisteria  "#9e95c7")
      )
  (custom-theme-set-variables
   'fire-obsidian
   '(frame-brackground-mode (quote dark)))

  (custom-theme-set-faces
   'fire-obsidian

   ;; Agda2
   `(agda2-highlight-datatype-face ((t (:foreground ,fire-obsidian-quartz))))
   `(agda2-highlight-primitive-type-face ((t (:foreground ,fire-obsidian-quartz))))
   `(agda2-highlight-function-face ((t (:foreground ,fire-obsidian-niagara))))
   `(agda2-highlight-keyword-face ((t ,(list :foreground fire-obsidian-yellow
                                             :bold t))))
   `(agda2-highlight-inductive-constructor-face ((t (:foreground ,fire-obsidian-green))))
   `(agda2-highlight-number-face ((t (:foreground ,fire-obsidian-wisteria))))

   ;; AUCTeX
   `(font-latex-bold-face ((t (:foreground ,fire-obsidian-quartz :bold t))))
   `(font-latex-italic-face ((t (:foreground ,fire-obsidian-quartz :italic t))))
   `(font-latex-math-face ((t (:foreground ,fire-obsidian-green))))
   `(font-latex-sectioning-5-face ((t ,(list :foreground fire-obsidian-niagara
                                             :bold t))))
   `(font-latex-slide-title-face ((t (:foreground ,fire-obsidian-niagara))))
   `(font-latex-string-face ((t (:foreground ,fire-obsidian-green))))
   `(font-latex-warning-face ((t (:foreground ,fire-obsidian-red))))

   ;; Basic Coloring (or Uncategorized)
   `(border ((t ,(list :background fire-obsidian-bg-1
                       :foreground fire-obsidian-bg+2))))
   `(cursor ((t (:background ,fire-obsidian-yellow))))
   `(default ((t ,(list :foreground fire-obsidian-fg
                        :background fire-obsidian-bg))))
   `(fringe ((t ,(list :background nil
                       :foreground fire-obsidian-bg+2))))
   `(vertical-border ((t ,(list :foreground fire-obsidian-bg+2))))
   `(link ((t (:foreground ,fire-obsidian-niagara :underline t))))
   `(link-visited ((t (:foreground ,fire-obsidian-wisteria :underline t))))
   `(match ((t (:background ,fire-obsidian-bg+4))))
   `(shadow ((t (:foreground ,fire-obsidian-bg+4))))
   `(minibuffer-prompt ((t (:foreground ,fire-obsidian-niagara))))
   `(region ((t (:background ,fire-obsidian-bg+3 :foreground nil))))
   `(secondary-selection ((t ,(list :background fire-obsidian-bg+3
                                    :foreground nil))))
   `(trailing-whitespace ((t ,(list :foreground fire-obsidian-black
                                    :background fire-obsidian-red))))
   `(tooltip ((t ,(list :background fire-obsidian-bg+4
                        :foreground fire-obsidian-white))))

   ;; Calendar
   `(holiday-face ((t (:foreground ,fire-obsidian-red))))

   ;; Compilation
   `(compilation-info ((t ,(list :foreground fire-obsidian-green
                                 :inherit 'unspecified))))
   `(compilation-warning ((t ,(list :foreground fire-obsidian-brown
                                    :bold t
                                    :inherit 'unspecified))))
   `(compilation-error ((t (:foreground ,fire-obsidian-red+1))))
   `(compilation-mode-line-fail ((t ,(list :foreground fire-obsidian-red
                                           :weight 'bold
                                           :inherit 'unspecified))))
   `(compilation-mode-line-exit ((t ,(list :foreground fire-obsidian-green
                                           :weight 'bold
                                           :inherit 'unspecified))))

   ;; Completion
   `(completions-annotations ((t (:inherit 'shadow))))

   ;; Custom
   `(custom-state ((t (:foreground ,fire-obsidian-green))))

   ;; Diff
   `(diff-removed ((t ,(list :foreground fire-obsidian-red+1
                             :background nil))))
   `(diff-added ((t ,(list :foreground fire-obsidian-green
                           :background nil))))

   ;; Dired
   `(dired-directory ((t (:foreground ,fire-obsidian-niagara :weight bold))))
   `(dired-ignored ((t ,(list :foreground fire-obsidian-quartz
                              :inherit 'unspecified))))

   ;; Ebrowse
   `(ebrowse-root-class ((t (:foreground ,fire-obsidian-niagara :weight bold))))
   `(ebrowse-progress ((t (:background ,fire-obsidian-niagara))))

   ;; Egg
   `(egg-branch ((t (:foreground ,fire-obsidian-yellow))))
   `(egg-branch-mono ((t (:foreground ,fire-obsidian-yellow))))
   `(egg-diff-add ((t (:foreground ,fire-obsidian-green))))
   `(egg-diff-del ((t (:foreground ,fire-obsidian-red))))
   `(egg-diff-file-header ((t (:foreground ,fire-obsidian-wisteria))))
   `(egg-help-header-1 ((t (:foreground ,fire-obsidian-yellow))))
   `(egg-help-header-2 ((t (:foreground ,fire-obsidian-niagara))))
   `(egg-log-HEAD-name ((t (:box (:color ,fire-obsidian-fg)))))
   `(egg-reflog-mono ((t (:foreground ,fire-obsidian-niagara-1))))
   `(egg-section-title ((t (:foreground ,fire-obsidian-yellow))))
   `(egg-text-base ((t (:foreground ,fire-obsidian-fg))))
   `(egg-term ((t (:foreground ,fire-obsidian-yellow))))

   ;; ERC
   `(erc-notice-face ((t (:foreground ,fire-obsidian-wisteria))))
   `(erc-timestamp-face ((t (:foreground ,fire-obsidian-green))))
   `(erc-input-face ((t (:foreground ,fire-obsidian-red+1))))
   `(erc-my-nick-face ((t (:foreground ,fire-obsidian-red+1))))

   ;; EShell
   `(eshell-ls-backup ((t (:foreground ,fire-obsidian-quartz))))
   `(eshell-ls-directory ((t (:foreground ,fire-obsidian-niagara))))
   `(eshell-ls-executable ((t (:foreground ,fire-obsidian-green))))
   `(eshell-ls-symlink ((t (:foreground ,fire-obsidian-yellow))))

   ;; Font Lock
   `(font-lock-builtin-face ((t (:foreground ,fire-obsidian-yellow))))
   `(font-lock-comment-face ((t (:foreground ,fire-obsidian-brown))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,fire-obsidian-brown))))
   `(font-lock-constant-face ((t (:foreground ,fire-obsidian-quartz))))
   `(font-lock-doc-face ((t (:foreground ,fire-obsidian-green))))
   `(font-lock-doc-string-face ((t (:foreground ,fire-obsidian-green))))
   `(font-lock-function-name-face ((t (:foreground ,fire-obsidian-niagara))))
   `(font-lock-keyword-face ((t (:foreground ,fire-obsidian-yellow :bold t))))
   `(font-lock-preprocessor-face ((t (:foreground ,fire-obsidian-quartz))))
   `(font-lock-reference-face ((t (:foreground ,fire-obsidian-quartz))))
   `(font-lock-string-face ((t (:foreground ,fire-obsidian-green))))
   `(font-lock-type-face ((t (:foreground ,fire-obsidian-quartz))))
   `(font-lock-variable-name-face ((t (:foreground ,fire-obsidian-fg+1))))
   `(font-lock-warning-face ((t (:foreground ,fire-obsidian-red))))

   ;; Flymake
   `(flymake-errline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,fire-obsidian-red)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:foreground ,fire-obsidian-red :weight bold :underline t))))
   `(flymake-warnline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,fire-obsidian-yellow)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:forground ,fire-obsidian-yellow :weight bold :underline t))))
   `(flymake-infoline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,fire-obsidian-green)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:forground ,fire-obsidian-green :weight bold :underline t))))

   ;; Flyspell
   `(flyspell-incorrect
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,fire-obsidian-red) :inherit unspecified))
      (t (:foreground ,fire-obsidian-red :weight bold :underline t))))
   `(flyspell-duplicate
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,fire-obsidian-yellow) :inherit unspecified))
      (t (:foreground ,fire-obsidian-yellow :weight bold :underline t))))

   ;; Helm
   `(helm-candidate-number ((t ,(list :background fire-obsidian-bg+2
                                      :foreground fire-obsidian-yellow
                                      :bold t))))
   `(helm-ff-directory ((t ,(list :foreground fire-obsidian-niagara
                                  :background fire-obsidian-bg
                                  :bold t))))
   `(helm-ff-executable ((t (:foreground ,fire-obsidian-green))))
   `(helm-ff-file ((t (:foreground ,fire-obsidian-fg :inherit unspecified))))
   `(helm-ff-invalid-symlink ((t ,(list :foreground fire-obsidian-bg
                                        :background fire-obsidian-red))))
   `(helm-ff-symlink ((t (:foreground ,fire-obsidian-yellow :bold t))))
   `(helm-selection-line ((t (:background ,fire-obsidian-bg+1))))
   `(helm-selection ((t (:background ,fire-obsidian-bg+1 :underline nil))))
   `(helm-source-header ((t ,(list :foreground fire-obsidian-yellow
                                   :background fire-obsidian-bg
                                   :box (list :line-width -1
                                              :style 'released-button)))))

   ;; Ido
   `(ido-first-match ((t (:foreground ,fire-obsidian-yellow :bold nil))))
   `(ido-only-match ((t (:foreground ,fire-obsidian-brown :weight bold))))
   `(ido-subdir ((t (:foreground ,fire-obsidian-niagara :weight bold))))

   ;; Info
   `(info-xref ((t (:foreground ,fire-obsidian-niagara))))
   `(info-visited ((t (:foreground ,fire-obsidian-wisteria))))

   ;; Jabber
   `(jabber-chat-prompt-foreign ((t ,(list :foreground fire-obsidian-quartz
                                           :bold nil))))
   `(jabber-chat-prompt-local ((t (:foreground ,fire-obsidian-yellow))))
   `(jabber-chat-prompt-system ((t (:foreground ,fire-obsidian-green))))
   `(jabber-rare-time-face ((t (:foreground ,fire-obsidian-green))))
   `(jabber-roster-user-online ((t (:foreground ,fire-obsidian-green))))
   `(jabber-activity-face ((t (:foreground ,fire-obsidian-red))))
   `(jabber-activity-personal-face ((t (:foreground ,fire-obsidian-yellow :bold t))))

   ;; Line Highlighting
   `(highlight ((t (:background ,fire-obsidian-bg+1 :foreground nil))))
   `(highlight-current-line-face ((t ,(list :background fire-obsidian-bg+1
                                            :foreground nil))))

   ;; line numbers
   `(line-number ((t (:inherit default :foreground ,fire-obsidian-bg+4))))
   `(line-number-current-line ((t (:inherit line-number :foreground ,fire-obsidian-yellow))))

   ;; Linum
   `(linum ((t `(list :foreground fire-obsidian-quartz
                      :background fire-obsidian-bg))))

   ;; Magit
   `(magit-branch ((t (:foreground ,fire-obsidian-niagara))))
   `(magit-diff-hunk-header ((t (:background ,fire-obsidian-bg+2))))
   `(magit-diff-file-header ((t (:background ,fire-obsidian-bg+4))))
   `(magit-log-sha1 ((t (:foreground ,fire-obsidian-red+1))))
   `(magit-log-author ((t (:foreground ,fire-obsidian-brown))))
   `(magit-log-head-label-remote ((t ,(list :foreground fire-obsidian-green
                                            :background fire-obsidian-bg+1))))
   `(magit-log-head-label-local ((t ,(list :foreground fire-obsidian-niagara
                                           :background fire-obsidian-bg+1))))
   `(magit-log-head-label-tags ((t ,(list :foreground fire-obsidian-yellow
                                          :background fire-obsidian-bg+1))))
   `(magit-log-head-label-head ((t ,(list :foreground fire-obsidian-fg
                                          :background fire-obsidian-bg+1))))
   `(magit-item-highlight ((t (:background ,fire-obsidian-bg+1))))
   `(magit-tag ((t ,(list :foreground fire-obsidian-yellow
                          :background fire-obsidian-bg))))
   `(magit-blame-heading ((t ,(list :background fire-obsidian-bg+1
                                    :foreground fire-obsidian-fg))))

   ;; Message
   `(message-header-name ((t (:foreground ,fire-obsidian-green))))

   ;; Mode Line
   `(mode-line ((t ,(list :background fire-obsidian-bg+1
                          :foreground fire-obsidian-white))))
   `(mode-line-buffer-id ((t ,(list :background fire-obsidian-bg+1
                                    :foreground fire-obsidian-white))))
   `(mode-line-inactive ((t ,(list :background fire-obsidian-bg+1
                                   :foreground fire-obsidian-quartz))))

   ;; Neo Dir
   `(neo-dir-link-face ((t (:foreground ,fire-obsidian-niagara))))

   ;; Org Mode
   `(org-agenda-structure ((t (:foreground ,fire-obsidian-niagara))))
   `(org-column ((t (:background ,fire-obsidian-bg-1))))
   `(org-column-title ((t (:background ,fire-obsidian-bg-1 :underline t :weight bold))))
   `(org-done ((t (:foreground ,fire-obsidian-green))))
   `(org-todo ((t (:foreground ,fire-obsidian-red-1))))
   `(org-upcoming-deadline ((t (:foreground ,fire-obsidian-yellow))))

   ;; Search
   `(isearch ((t ,(list :foreground fire-obsidian-black
                        :background fire-obsidian-fg+2))))
   `(isearch-fail ((t ,(list :foreground fire-obsidian-black
                             :background fire-obsidian-red))))
   `(isearch-lazy-highlight-face ((t ,(list
                                       :foreground fire-obsidian-fg+1
                                       :background fire-obsidian-niagara-1))))

   ;; Sh
   `(sh-quoted-exec ((t (:foreground ,fire-obsidian-red+1))))

   ;; Show Paren
   `(show-paren-match-face ((t (:background ,fire-obsidian-bg+4))))
   `(show-paren-mismatch-face ((t (:background ,fire-obsidian-red-1))))

   ;; Slime
   `(slime-repl-inputed-output-face ((t (:foreground ,fire-obsidian-red))))

   ;; Tuareg
   `(tuareg-font-lock-governing-face ((t (:foreground ,fire-obsidian-yellow))))

   ;; Speedbar
   `(speedbar-directory-face ((t ,(list :foreground fire-obsidian-niagara
                                        :weight 'bold))))
   `(speedbar-file-face ((t (:foreground ,fire-obsidian-fg))))
   `(speedbar-highlight-face ((t (:background ,fire-obsidian-bg+1))))
   `(speedbar-selected-face ((t (:foreground ,fire-obsidian-red))))
   `(speedbar-tag-face ((t (:foreground ,fire-obsidian-yellow))))

   ;; Which Function
   `(which-func ((t (:foreground ,fire-obsidian-wisteria))))

   ;; Whitespace
   `(whitespace-space ((t ,(list :background fire-obsidian-bg
                                 :foreground fire-obsidian-bg+1))))
   `(whitespace-tab ((t ,(list :background fire-obsidian-bg
                               :foreground fire-obsidian-bg+1))))
   `(whitespace-hspace ((t ,(list :background fire-obsidian-bg
                                  :foreground fire-obsidian-bg+2))))
   `(whitespace-line ((t ,(list :background fire-obsidian-bg+2
                                :foreground fire-obsidian-red+1))))
   `(whitespace-newline ((t ,(list :background fire-obsidian-bg
                                   :foreground fire-obsidian-bg+2))))
   `(whitespace-trailing ((t ,(list :background fire-obsidian-red
                                    :foreground fire-obsidian-red))))
   `(whitespace-empty ((t ,(list :background fire-obsidian-yellow
                                 :foreground fire-obsidian-yellow))))
   `(whitespace-indentation ((t ,(list :background fire-obsidian-yellow
                                       :foreground fire-obsidian-red))))
   `(whitespace-space-after-tab ((t ,(list :background fire-obsidian-yellow
                                           :foreground fire-obsidian-yellow))))
   `(whitespace-space-before-tab ((t ,(list :background fire-obsidian-brown
                                            :foreground fire-obsidian-brown))))

   ;; tab-bar
   `(tab-bar ((t (:background ,fire-obsidian-bg+1 :foreground ,fire-obsidian-bg+4))))
   `(tab-bar-tab ((t (:background nil :foreground ,fire-obsidian-yellow :weight bold))))
   `(tab-bar-tab-inactive ((t (:background nil))))

   ;; vterm / ansi-term
   `(term-color-black ((t (:foreground ,fire-obsidian-bg+3 :background ,fire-obsidian-bg+4))))
   `(term-color-red ((t (:foreground ,fire-obsidian-red-1 :background ,fire-obsidian-red-1))))
   `(term-color-green ((t (:foreground ,fire-obsidian-green :background ,fire-obsidian-green))))
   `(term-color-blue ((t (:foreground ,fire-obsidian-niagara :background ,fire-obsidian-niagara))))
   `(term-color-yellow ((t (:foreground ,fire-obsidian-yellow :background ,fire-obsidian-yellow))))
   `(term-color-magenta ((t (:foreground ,fire-obsidian-wisteria :background ,fire-obsidian-wisteria))))
   `(term-color-cyan ((t (:foreground ,fire-obsidian-quartz :background ,fire-obsidian-quartz))))
   `(term-color-white ((t (:foreground ,fire-obsidian-fg :background ,fire-obsidian-white))))

   ;; company-mode
   `(company-tooltip ((t (:foreground ,fire-obsidian-fg :background ,fire-obsidian-bg+1))))
   `(company-tooltip-annotation ((t (:foreground ,fire-obsidian-brown :background ,fire-obsidian-bg+1))))
   `(company-tooltip-annotation-selection ((t (:foreground ,fire-obsidian-brown :background ,fire-obsidian-bg-1))))
   `(company-tooltip-selection ((t (:foreground ,fire-obsidian-fg :background ,fire-obsidian-bg-1))))
   `(company-tooltip-mouse ((t (:background ,fire-obsidian-bg-1))))
   `(company-tooltip-common ((t (:foreground ,fire-obsidian-green))))
   `(company-tooltip-common-selection ((t (:foreground ,fire-obsidian-green))))
   `(company-scrollbar-fg ((t (:background ,fire-obsidian-bg-1))))
   `(company-scrollbar-bg ((t (:background ,fire-obsidian-bg+2))))
   `(company-preview ((t (:background ,fire-obsidian-green))))
   `(company-preview-common ((t (:foreground ,fire-obsidian-green :background ,fire-obsidian-bg-1))))

   ;; Proof General
   `(proof-locked-face ((t (:background ,fire-obsidian-niagara-2))))

   ;; Orderless
   `(orderless-match-face-0 ((t (:foreground ,fire-obsidian-yellow))))
   `(orderless-match-face-1 ((t (:foreground ,fire-obsidian-green))))
   `(orderless-match-face-2 ((t (:foreground ,fire-obsidian-brown))))
   `(orderless-match-face-3 ((t (:foreground ,fire-obsidian-quartz))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'fire-obsidian)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; fire-obsidian-theme.el ends here.
