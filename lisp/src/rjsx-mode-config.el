;;;; configure rjsx-mode
;;;; https://github.com/felipeochoa/rjsx-mode

;; run rjsx-mode for every .js file
(add-to-list 'auto-mode-alist '(".*\\.js\\'" . rjsx-mode))

;; fix indentation
(setq js-indent-level 2)
