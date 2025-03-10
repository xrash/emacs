;; configure load path
(add-to-list 'load-path "~/.emacs.d/lisp")

;; configure basic emacs functionality
(load "src/customize")
(load "src/package-repos")
(load "src/disable-lockfiles")
(load "src/temporary-files-management")
(load "src/load-theme")
(load "src/disable-version-control")
(load "src/adjust-minibuffer-color")
(load "src/column-mode")
(load "src/window-switching")
(load "src/transient-mark")
(load "src/parenthesis-highlighting")
(load "src/delete-selection")
(load "src/yank-to-clipboard")
(load "src/goto-line")
(load "src/duplicate-current-line-or-region")
(load "src/disable-menu-bar")
(load "src/reload-config")
(load "src/volume")
(load "src/disable-upcase-downcase")
(load "src/window-resize")

;; configure tech-specific modes
(load "src/typescript-mode-config")
(load "src/js-mode-config")
(load "src/tide-mode-config")
(load "src/go-mode-config")
(load "src/web-mode-config")
(load "src/xml-mode-config")
(load "src/flutter-mode-config")

