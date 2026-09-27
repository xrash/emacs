;;; -*- lexical-binding: t -*-
;; the oxfmt installed in the project, if any
(defun oxfmt-project-program ()
  (when-let* ((root (locate-dominating-file default-directory "node_modules/.bin/oxfmt")))
    (expand-file-name "node_modules/.bin/oxfmt" root)))

;; without a project oxfmt, format nothing
(defun oxfmt-skip-p ()
  (and (eq (alist-get major-mode apheleia-mode-alist) 'oxfmt)
       (not (oxfmt-project-program))))

(setf (alist-get 'oxfmt apheleia-formatters)
      '((oxfmt-project-program) "--stdin-filepath" filepath))
(add-to-list 'apheleia-skip-functions #'oxfmt-skip-p)

;; oxfmt on save
(dolist (mode '(typescript-ts-mode tsx-ts-mode js-mode js-ts-mode js-jsx-mode))
  (setf (alist-get mode apheleia-mode-alist) 'oxfmt)
  (add-hook (intern (format "%s-hook" mode)) #'apheleia-mode))

;; gofmt on save, apheleia already maps go-ts-mode to gofmt
(add-hook 'go-ts-mode-hook #'apheleia-mode)

;; rustfmt on save, apheleia already maps rust-ts-mode to rustfmt
(add-hook 'rust-ts-mode-hook #'apheleia-mode)
