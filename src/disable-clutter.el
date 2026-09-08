;;; -*- lexical-binding: t -*-
;; remove all version control hooks
(setq vc-handled-backends nil)

;; disable lockfiles
(setq create-lockfiles nil)

;; disable backup files
(setq make-backup-files nil)

;; disable auto-save files
(setq auto-save-default nil)

;; disable auto-save-list
(setq auto-save-list-file-prefix nil)

;; redirect the custom to write to its own file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

;; load the custom file if it exists, but don't crash if it doesn't
;; not sure if this is needed
(when (file-exists-p custom-file)
  (load custom-file))
