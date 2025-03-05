;;; Compiled snippets and support files for `makefile-gmake-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'makefile-gmake-mode
                     '(("make" "CFLAGS=-Wall -Wextra -std=c11 -pedantic\nLIBS=\n\n$1: $2\n	$(CC) $(CFLAGS) -o $1 $2 $(LIBS)\n" "make" nil nil
                        ((yas-indent-line 'fixed))
                        "/home/cicca/.emacs.d/snippets/makefile-gmake-mode/make" nil nil)))


;;; Do not edit! File generated at Wed Feb 19 09:47:40 2025
