;;;; js-mode configuration

;; js-mode trigger tide-mode
(add-hook 'js-mode-hook #'setup-tide-mode)

;; js-mode indentation
(setq js-indent-level 2)
