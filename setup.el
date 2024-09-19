
;; Disable making backup file
(setq make-backup-files nil)
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
