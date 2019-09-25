(setq org-confirm-babel-evaluate nil)
(with-current-buffer (find-file-noselect "supermemo-wine.org")
  (mapc #'(lambda (name) (org-babel-goto-named-src-block name) (org-babel-execute-src-block))
        '("elisp-utilities"
          "zip-installer"
          "wizard-installer"
          "installer-sm9"
          "installer-sm12"
          "installer-sm15"
          "installer-sm16"
          "installer-sm17"
          "installer-sm18")))
