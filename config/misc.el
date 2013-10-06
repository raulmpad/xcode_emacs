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

  ;; yes-or-no stuff
  (fset 'yes-or-no-p 'y-or-n-p)
  )

(set-misc-options)

;; ****************************** Settings decorations and bells...
(setq visible-bell t
      font-lock-maximum-decoration t
      color-theme-is-global t
      truncate-partial-width-windows nil)

	  ;; ****************************** Highlight current line
(global-hl-line-mode -1)

;; ****************************** Highlight matching parentheses when the point is on them.
(show-paren-mode 1)
(winner-mode 1)

;; ****************************** No menu bars
(menu-bar-mode -1)

;; ****************************** Ditch them scrollbars
(scroll-bar-mode -1)


(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b"))))
(tooltip-mode 1)
(blink-cursor-mode 1)


;; ****************************** My prefered theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;; (load-theme 'railscasts t nil)
(load-theme 'misterioso t nil)

;; ****************************** Yellow Cursor
(set-cursor-color "yellow")


(provide 'misc)
