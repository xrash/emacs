(require 'package)

;(setq package-archives
;      '(("gnu" . "http://elpa.gnu.org/packages/")
;	("marmalade" . "http://marmalade-repo.org/packages/")
;	("melpa-stable" . "http://melpa-stable.milkbox.net/packages/")
;	("org" . "http://orgmode.org/elpa/")))

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)
