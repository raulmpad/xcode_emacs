;; Turn off mouse interface early in startup to avoid momentary display
;; (if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; ***************************** No splash screen please ... jeez
(setq ring-bell-function nil)
(setq visible-bell t)
(setq inhibit-startup-message t)

;; ***************************** Checking emacs version
(when (< emacs-major-version 24)
  (error "This version of emacs is as old as dirt."))

;; ****************************** Hombrew path added
(push "/usr/local/bin" exec-path)

(provide 'startup)
