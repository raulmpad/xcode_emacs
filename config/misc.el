(defun set-misc-options ()

  ;; Don't polute everything with backups
  (setq backup-directory-alist
        `(("." . ,(concat user-emacs-directory "backups/"))))

  ;; Always add new line
  (setq require-final-newline t)

  ;; No tab characters
  (setq-default indent-tabs-mode nil)

  ;; Use SSH when tramping.
  (setq tramp-default-method "ssh")
  )

(set-misc-options)

(provide 'misc)
