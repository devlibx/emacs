
;; disable splash screen and startup message
(setq inhibit-startup-message t) 
(setq initial-scratch-message nil)

;; Set cursor color to white
(set-cursor-color "#0000ff")


;; Configs related to Debug UI
;; In dapui debug mode do do note show all windows 
(setq dap-auto-configure-features '(controls))
