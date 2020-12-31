(defun yank-to-x-clipboard ()
  (interactive)
  (if (region-active-p)
      (progn
	(shell-command-on-region (region-beginning) (region-end) "xsel -i -b")
	(message "Yanked region to clipboard!"))
    (message "No region active; can't yank to clipboard!")))

(global-set-key [f8] 'yank-to-x-clipboard)
