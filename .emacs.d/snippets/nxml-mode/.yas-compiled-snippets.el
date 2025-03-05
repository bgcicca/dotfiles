;;; Compiled snippets and support files for `nxml-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'nxml-mode
                     '(("xml" "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>" "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"no\" ?>" nil nil nil "/home/cicca/.emacs.d/snippets/nxml-mode/xml" nil nil)
                       ("title" "<title>$0</title>" "<title>...</title>" nil nil nil "/home/cicca/.emacs.d/snippets/nxml-mode/title" nil nil)
                       ("tag" "<${1:tag} $2/>$0" "<tag />" nil nil nil "/home/cicca/.emacs.d/snippets/nxml-mode/tag.2" nil nil)
                       ("tag" "<${1:tag}$2>$0</$1>" "<tag>...</tag>" nil nil nil "/home/cicca/.emacs.d/snippets/nxml-mode/tag.1" nil nil)
                       ("tag" "<${1:tag}$2>\n$0\n</$1>" "<tag>\\n...\\n</tag>" nil nil nil "/home/cicca/.emacs.d/snippets/nxml-mode/tag" nil nil)
                       ("span" "<span class=\"$1\">$0</span>" "<span class=\"...\">\\n...\\n</span>" nil nil nil "/home/cicca/.emacs.d/snippets/nxml-mode/span" nil nil)
                       ("script" "<script type=\"text/javascript\" src=\"$1\"></script>" "<script type=\"text/javascript\" src=\"...\"></title>" nil nil nil "/home/cicca/.emacs.d/snippets/nxml-mode/script" nil nil)
                       ("pom" "<project xmlns=\"http://maven.apache.org/POM/4.0.0\"\n         xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\n         xsi:schemaLocation=\"http://maven.apache.org/POM/4.0.0\n                             http://maven.apache.org/xsd/maven-4.0.0.xsd\">\n  <modelVersion>4.0.0</modelVersion>\n  <groupId>${1:me.rexim}</groupId>\n  <artifactId>${2:artifactId}</artifactId>\n  <version>${3:0.0.1-SNAPSHOT}</version>\n\n  <properties>\n    <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>\n  </properties>\n</project>\n" "<project>...</project>" nil nil nil "/home/cicca/.emacs.d/snippets/nxml-mode/pom" nil nil)
                       ("meta" "<meta http-equiv=\"${1:Content-Type}\" content=\"${2:text/html; charset=UTF-8}\" />" "<meta http-equiv=\"...\" content=\"...\" />" nil nil nil "/home/cicca/.emacs.d/snippets/nxml-mode/meta" nil nil)
                       ("link" "<link rel=\"${1:stylesheet}\" href=\"${2:url}\" type=\"${3:text/css}\" media=\"${4:screen}\" />" "<link stylesheet=\"...\" />" nil nil nil "/home/cicca/.emacs.d/snippets/nxml-mode/link" nil nil)
                       ("html" "<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"${1:en}\" lang=\"${2:en}\">\n$0\n</html>" "<html xmlns=\"...\">...</html>" nil nil nil "/home/cicca/.emacs.d/snippets/nxml-mode/html" nil nil)
                       ("head" "<head>\n$0\n</head>" "<head>...</head>" nil nil nil "/home/cicca/.emacs.d/snippets/nxml-mode/head" nil nil)
                       ("div" "<div class=\"$1\">\n$0\n</div>" "<div class=\"...\">\\n...\\n</div>" nil nil nil "/home/cicca/.emacs.d/snippets/nxml-mode/div" nil nil)
                       ("body" "<body>\n$0\n</body>" "<body>...</body>" nil nil nil "/home/cicca/.emacs.d/snippets/nxml-mode/body" nil nil)))


;;; Do not edit! File generated at Wed Feb 19 09:47:40 2025
