;; ******************************  Startups
(load (concat user-emacs-directory "startup"))
(require 'startup)

;; ******************************  Loads primary configurartions and paths location
(add-to-list 'load-path (concat user-emacs-directory "config"))

;; ******************************  Misc
(require 'misc)

;; ******************************  System
(require 'system)

;; ******************************  Packages
(require 'packages)


;; ******************************  Mac
(setq is-mac (equal system-type 'darwin))
(when is-mac (require 'mac))




;; ******************************  eshell
(require 'e_shell)
