
(add-hook 'go-mode-hook (lambda ()
			  (setq tab-width 4)

			  ;; gofmt
			  (local-set-key [f5] 'gofmt)

			  ;; language server
			  (lsp-deferred)

			  ;; autocomplete
			  (require 'go-autocomplete)
			  (require 'auto-complete-config)
			  (ac-config-default)))
