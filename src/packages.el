;;; -*- lexical-binding: t -*-
(require 'package)

;; add other repositories to packages archives list
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

;; eglot is the lsp client
(use-package eglot
  :ensure t)

;; completion ui
(use-package corfu
  :ensure t
  :init
  (global-corfu-mode)
  :custom
  (corfu-auto t)
  (corfu-auto-prefix 1)
  (corfu-auto-delay 0.1))

;; markdown mode, will have native markdown-ts-mode in emacs 31
(use-package md-ts-mode
  :ensure t)

;; formatter on save, configured in src/apheleia.el
(use-package apheleia
  :ensure t)
