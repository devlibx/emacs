
;; Disable making backup file
(setq make-backup-files nil)
(setq auto-save-default nil)  ;; Disable auto-save
;; (setq debug-on-error t)

;; Install Magit
(use-package magit
  :ensure t)

;; Enable multi select
(use-package multiple-cursors
  :ensure t
  :config
  (global-set-key (kbd "C-x l") 'mc/edit-lines))


;; Setup projectile
;; Setq my default project location in search path
(use-package projectile
  :ensure t
  :config
  (projectile-mode +1)
  (setq projectile-project-search-path
	'("/Users/harishbohara/workplace/personal" "/Users/harishbohara/workplace")))

;; Show which key help
(use-package which-key
  :ensure t
  :config
  (which-key-mode)
  (setq which-key-idle-delay 0.1
        which-key-max-description-length 20))


;; Show full file path in buffer
(defun update-header-line-with-file-path ()
  "Update the header line to show the full file path of the current buffer."
  (setq header-line-format
        (if (buffer-file-name)
            (format "%s" (buffer-file-name))
          "No file associated")))
(add-hook 'find-file-hook 'update-header-line-with-file-path)
(add-hook 'buffer-list-update-hook 'update-header-line-with-file-path)
(add-hook 'window-configuration-change-hook 'update-header-line-with-file-path)

;; Make sure all files are used by company mode to auto complete
(defun add-elpa-to-company-files ()
  "Add `.emacs/elpa/` to the list of directories for `company-files`."
  (add-to-list 'company-files-known-files
               (expand-file-name "~/.emacs/elpa/")))

;; (add-hook 'after-init-hook 'add-elpa-to-company-files)


;; Spelling check
(setq ispell-program-name "ispell")
(add-hook 'prog-mode-hook 'flyspell-prog-mode)
(add-hook 'prog-mode-hook
          (lambda ()
            (flyspell-prog-mode)
            (flyspell-buffer)))
