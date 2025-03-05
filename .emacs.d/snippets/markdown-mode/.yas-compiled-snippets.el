;;; Compiled snippets and support files for `markdown-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'markdown-mode
                     '(("todo"
                        (progn
                          (if
                              (region-active-p)
                              (yas-expand-snippet "<!--TODO:-->`yas-selected-text`<!--$0-->")
                            (yas-expand-snippet "<!--TODO: $0 -->")))
                        "todo" nil nil nil "/home/cicca/.emacs.d/snippets/markdown-mode/todo" "C-x t" nil)))


;;; Do not edit! File generated at Wed Feb 19 09:47:40 2025
