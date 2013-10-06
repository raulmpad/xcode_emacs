;; ******************************  10 STARTUP
(load (concat user-emacs-directory "startup"))
(require 'startup)

;; ******************************  Loads primary configurartions and paths location
(add-to-list 'load-path (concat user-emacs-directory "config"))

;; ******************************  Misc
(require 'misc)

;; ******************************  Mac
(setq is-mac (equal system-type 'darwin))
(when is-mac (require 'mac))

;; ******************************  System
(require 'system)



;; ******************************  eshell
(require 'eshell)
