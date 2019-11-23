;; -*- lexical-binding: t; -*-

(require 'org)
(require 'ob-core)

(defun visit-execute-src-block (&rest names)
  "Visit and execute source blocks denoted by NAMES."
  (mapc #'(lambda (block-name)
	    (org-babel-goto-named-src-block block-name)
	    (org-babel-execute-src-block))
	names))

(let ((org-confirm-babel-evaluate nil))
  (org-babel-do-load-languages 'org-babel-load-languages '((emacs-lisp . t)
							   (shell . t)))
  (with-current-buffer (find-file-noselect "supermemo-wine.org")
    (visit-execute-src-block "installer template paths" "smglobe base64")
    (org-babel-tangle)
    (visit-execute-src-block "elisp utilities"
			     "installer for sm9"
			     "installer for sm12"
			     "installer for sm15.4"
			     "installer for sm15"
			     "installer for sm16"
			     "installer for sm17"
			     "installer for sm18")))
