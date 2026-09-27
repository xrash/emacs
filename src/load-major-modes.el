;;; -*- lexical-binding: t -*-
(add-hook 'go-ts-mode-hook #'eglot-ensure)
(add-hook 'typescript-ts-mode-hook #'eglot-ensure)
(add-hook 'tsx-ts-mode-hook #'eglot-ensure)
(add-hook 'rust-ts-mode-hook #'eglot-ensure)

;; associate suffixes with languages
(add-to-list 'auto-mode-alist '("\\.ts\\'"  . typescript-ts-mode))
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . tsx-ts-mode))
(add-to-list 'auto-mode-alist '("\\.go\\'"  . go-ts-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'"  . md-ts-mode))
(add-to-list 'auto-mode-alist '("\\.rs\\'"  . rust-ts-mode))
