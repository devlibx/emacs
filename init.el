(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(doom-challenger-deep))
 '(custom-safe-themes
   '("512ce140ea9c1521ccaceaa0e73e2487e2d3826cc9d287275550b47c04072bc4" default))
 '(org-safe-remote-resources
   '("\\`https://raw\\.githubusercontent\\.com\\(?:/\\|\\'\\)"))
 '(package-selected-packages
   '(gotest go-mode treemacs-tab-bar treemacs-persp treemacs-magit treemacs-icons-dired treemacs-projectile treemacs-evil multiple-cursors dap-mode doom-themes doom-theams projectile magit smex company)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Location to load packages
(require 'package)
;; (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
(package-initialize)

;; Dap lisp
(add-to-list 'load-path "~/.emacs.d/lisp/dap-mode/")

;; Load all other config files here
(load-file "~/.emacs.d/look.el")
(load-file "~/.emacs.d/setup.el")
(load-file "~/.emacs.d/custom.el")
(load-file "~/.emacs.d/custom-shell.el")
(load-file "~/.emacs.d/treemacs.el")
(load-file "~/.emacs.d/key.el")
(load-file "~/.emacs.d/run_config.el")
