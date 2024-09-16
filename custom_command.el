;; Copy selected context - this will go to clipboard
(defun copy () (interactive)
       (let ((deactivate-mark t))
	 (call-process-region (point) (mark) "pbcopy")))

;; Git clean any change in local dir
;; Delete files and dir
(defun git-clean () (interactive)
       (shell-command "git clean -f -d; git checkout .;"))

;; Git commit with ammend
(defun git-commit-amend () (interactive)
       (shell-command "git add .;  git commit --amend --no-edit"))

;; Kill all buffer will kill all the open buffers
;; Here we loop through all buffers and kill them at one shot
(defun kill-all-buffers ()
  (interactive)
  (let ((buffers (buffer-list))
	(buffer-name nil)) 
    (while buffers
      (setq buffer-name (buffer-name (car buffers)))
      (kill-buffer buffer-name)
      (setq buffers (cdr buffers)))))

;; A shortcut for kill all buffer 
(defun kab () (interactive) (kill-all-buffers))

;; A shortcut for kill buffer 
(defun kb () (interactive) (kill-buffer))

