
;; Indent buffer to used to fix elips
(defun indent-buffer ()
  "Indent the entire buffer."
  (interactive)
  (indent-region (point-min) (point-max)))


;; Example of using built-in formatting commands
(add-hook 'emacs-lisp-mode-hook (lambda ()
				  (add-hook 'before-save-hook #'indent-buffer nil 'local)))
