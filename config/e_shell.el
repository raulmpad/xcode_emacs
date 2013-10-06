;; eShell configurarion

;; "clear" command 
(defun eshell/clear ()
  "Clear eshell console"
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))

;; history
(setq eshell-history-size 1024)

;; prompt
(setq eshell-prompt-regexp "^[^#$]*[#$] ")

;; HOME replacement
(defun pwd-repl-home (pwd)
  (interactive)
  (let* ((home (expand-file-name (getenv "HOME")))
	 (home-len (length home)))
    (if (and
	 (>= (length pwd) home-len)
	 (equal home (substring pwd 0 home-len)))
	(concat "~" (substring pwd home-len))
      pwd)))



(provide 'e_shell)
