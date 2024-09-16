
;; Some simple configs
(global-display-line-numbers-mode t) ;; Enable line number

;; Install Doom themes
(use-package doom-themes
  :ensure t
  :config
  (load-theme 'doom-challenger-deep t)
  (doom-themes-visual-bell-config))


