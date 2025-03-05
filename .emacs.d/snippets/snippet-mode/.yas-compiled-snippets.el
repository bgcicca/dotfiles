;;; Compiled snippets and support files for `snippet-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'snippet-mode
                     '(("snip" "# -*- mode: snippet -*-\n# name: $1\n# key: ${2:`(file-name-nondirectory (file-name-sans-extension (buffer-file-name)))`}\n# --\n$0" "snippet snippet" nil nil nil "/home/cicca/.emacs.d/snippets/snippet-mode/snip" nil nil)
                       ("fori" "for (int i = 0; i < 10; i++){}" "fori" nil nil nil "/home/cicca/.emacs.d/snippets/snippet-mode/fori" nil nil)))


;;; Do not edit! File generated at Wed Feb 19 09:47:40 2025
