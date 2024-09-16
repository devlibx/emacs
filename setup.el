
;; Install Magit
(use-package magit
  :ensure t)

;; Enable multi select
(use-package multiple-cursors
  :ensure t
  :config
  (global-set-key (kbd "C-x l") 'mc/edit-lines))
