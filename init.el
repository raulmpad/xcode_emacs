;; ******************************  Startups
(load (concat user-emacs-directory "startup"))
(require 'startup)

;; ******************************  Loads primary configurartions and paths location
(add-to-list 'load-path (concat user-emacs-directory "config"))
;; ******************************  Loads defuns
(setq defuns-dir (expand-file-name "defuns" user-emacs-directory))
(dolist (file (directory-files defuns-dir t "\\w+"))
  (when (file-regular-p file)
    (load file)))


;; ******************************  Misc
(require 'misc)

;; ******************************  System
(require 'system)

;; ******************************  Packages
(require 'packages)



;; ******************************  Mac
(setq is-mac (equal system-type 'darwin))
(when is-mac (require 'mac))

;; ******************************  Mac
(require `keys)

;; ******************************  eshell
(require 'e_shell)

;; ******************************  Symbols
(require 'symbols)
