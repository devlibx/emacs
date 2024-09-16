
;; Disable making backup file
(setq make-backup-files nil)

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
  (setq projectile-project-search-path
	'("/Users/harishbohara/workplace/personal" "/Users/harishbohara/workplace")))
