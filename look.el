
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
  ;; (load-theme 'doom-acario-light t)
  (doom-themes-visual-bell-config))

(use-package material-theme
  :ensure t
  :config
  (load-theme 'material-light t))  

;; Cursor settings
(set-cursor-color "#71368A")
(use-package beacon
  :ensure t
  :config
  (beacon-mode 1)
  (setq beacon-push-mark 35)
  (setq beacon-color "#666600"))


;; Disable Menu bar
(menu-bar-mode -1)


;; ----------------------------------------------------------------------------------------------------------
;; Start - Change the footer which is shown below buffer
;; ----------------------------------------------------------------------------------------------------------

;; Change only the mode line (footer) color => This is the bottom footer of buffer when buffer is active
(set-face-attribute 'mode-line nil :foreground "black" :background "thistle1")

;; Change the inactive mode line color (if needed) => This is the bottom footer of buffer when buffer is inactive
;; (set-face-attribute 'mode-line-inactive nil :foreground "red" :background "dark gray")

;; Reset the header line to its default or specify colors you want => This is top part of buffer where we show file name
(set-face-attribute 'header-line nil :foreground "black" :background "white")  ;; Adjust as needed

;; ----------------------------------------------------------------------------------------------------------
