(add-hook 'go-mode-hook (lambda ()
			  (setq tab-width 4)

			  ;; language server
			  (lsp-deferred)

			  ;; autocomplete
			  (require 'go-autocomplete)
			  (require 'auto-complete-config)
			  (ac-config-default)))
