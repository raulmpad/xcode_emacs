;; ******************************  10 STARTUP
(load (concat user-emacs-directory "startup"))
(require 'startup)

;; ******************************  Loads primary configurartions and paths location
(add-to-list 'load-path (concat user-emacs-directory "config"))
