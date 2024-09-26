
;; Auto scrool the logs[O]
(setq compilation-scroll-output t)

;; Disable the startup screen
(setq inhibit-startup-message t)

;; Optionally, disable the initial scratch message
(setq initial-scratch-message nil)

;; For Emacs 28 or later, disable the welcome screen
(setq inhibit-startup-echo-area-message t)

;; Some simple configs
(global-display-line-numbers-mode t) ;; Enable line number

;; Install Doom themes
(use-package doom-themes
  :ensure t
  :config
  ;;(load-theme 'doom-challenger-deep t)
  (load-theme 'doom-acario-light t)
  (doom-themes-visual-bell-config))

;; Cursor settings
(set-cursor-color "#71368A")
(use-package beacon
  :ensure t
  :config
  (beacon-mode 1)
  (setq beacon-push-mark 35)
  (setq beacon-color "#666600"))
