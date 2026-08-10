;; add other repositories to packages archives list
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(require 'package)

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

;; NOTE: Corfu relies on child frames to show the popup. On Emacs 31 this works for terminal Emacs. Use the corfu-terminal package on older Emacs versions.
;; from here: https://elpa.gnu.org/packages/doc/corfu.html
(use-package corfu-terminal
  :ensure t
  :config
  (corfu-terminal-mode +1))

;; markdown mode, will have native markdown-ts-mode in emacs 31
(use-package md-ts-mode
  :ensure t)

;; formatter on save, configured in src/apheleia.el
(use-package apheleia
  :ensure t)
