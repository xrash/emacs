(defun my-project-try-root (dir)
  (when-let ((root
              (locate-dominating-file
               dir
               (lambda (dir)
                 (or (file-exists-p (expand-file-name ".git" dir))
                     (file-exists-p (expand-file-name "go.mod" dir))
                     (file-exists-p (expand-file-name "package.json" dir))
                     (file-exists-p (expand-file-name "Cargo.toml" dir)))))))
    (cons 'transient root)))

(add-hook 'project-find-functions #'my-project-try-root)
