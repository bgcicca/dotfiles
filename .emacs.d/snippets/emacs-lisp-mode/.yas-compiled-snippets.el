;;; Compiled snippets and support files for `emacs-lisp-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'emacs-lisp-mode
                     '(("pacmacs-module" ";;; ${1:`(file-name-nondirectory (buffer-file-name))`} --- Pacman for Emacs -*- lexical-binding: t -*-\n\n;; Copyright (C) `(format-time-string \"%Y\" (current-time))` Codingteam\n\n;; Author: Codingteam <codingteam@conference.jabber.ru>\n;; Maintainer: Alexey Kutepov <reximkut@gmail.com>\n;; URL: http://github.com/rexim/pacmacs.el\n\n;; Permission is hereby granted, free of charge, to any person\n;; obtaining a copy of this software and associated documentation\n;; files (the \"Software\"), to deal in the Software without\n;; restriction, including without limitation the rights to use, copy,\n;; modify, merge, publish, distribute, sublicense, and/or sell copies\n;; of the Software, and to permit persons to whom the Software is\n;; furnished to do so, subject to the following conditions:\n\n;; The above copyright notice and this permission notice shall be\n;; included in all copies or substantial portions of the Software.\n\n;; THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND,\n;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF\n;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND\n;; NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS\n;; BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN\n;; ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN\n;; CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE\n;; SOFTWARE.\n\n;;; Commentary:\n\n;; $2\n\n;;; Code:\n\n$0\n\n;;; $1 ends here" "pacmacs module skeleton" nil nil nil "/home/cicca/.emacs.d/snippets/emacs-lisp-mode/pacmacs-module" nil nil)
                       ("emacs-lisp-module" ";;; ${1:`(file-name-nondirectory (buffer-file-name))`} --- ${2:Package Description} -*- lexical-binding: t -*-\n\n;; Copyright (C) `(format-time-string \"%Y\" (current-time))` ${3:Alexey Kutepov <reximkut@gmail.com>}\n\n;; Author: $3\n;; URL: $4\n\n;; Permission is hereby granted, free of charge, to any person\n;; obtaining a copy of this software and associated documentation\n;; files (the \"Software\"), to deal in the Software without\n;; restriction, including without limitation the rights to use, copy,\n;; modify, merge, publish, distribute, sublicense, and/or sell copies\n;; of the Software, and to permit persons to whom the Software is\n;; furnished to do so, subject to the following conditions:\n\n;; The above copyright notice and this permission notice shall be\n;; included in all copies or substantial portions of the Software.\n\n;; THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND,\n;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF\n;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND\n;; NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS\n;; BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN\n;; ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN\n;; CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE\n;; SOFTWARE.\n\n;;; Commentary:\n\n;; $5\n\n;;; Code:\n\n$0\n\n(provide '${6:`(file-name-sans-extension (file-name-nondirectory (buffer-file-name)))`})\n\n;;; $1 ends here" "emacs lisp module skeleton" nil nil nil "/home/cicca/.emacs.d/snippets/emacs-lisp-mode/emacs-lisp-module" nil nil)))


;;; Do not edit! File generated at Wed Feb 19 09:47:40 2025
