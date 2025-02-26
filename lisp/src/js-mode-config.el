;;;; js-mode configuration

;; js-mode trigger tide-mode
(add-hook 'js-mode-hook #'setup-tide-mode)

;; (add-hook 'js-mode-hook 'prettier-mode)

(add-to-list 'auto-mode-alist '("\\.mjs" . js-mode))

;; js-mode indentation
(setq js-indent-level 2)
