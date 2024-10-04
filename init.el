
;; This is a special case - in case of ubuntu we may need this 
;; (when (eq system-type 'gnu/linux)
;;  (global-set-key (kbd "M-X") 'execute-extended-command))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(doom-acario-light))
 '(custom-safe-themes
   '("4e2e42e9306813763e2e62f115da71b485458a36e8b4c24e17a2168c45c9cf9d" "a138ec18a6b926ea9d66e61aac28f5ce99739cf38566876dc31e29ec8757f6e2" default))
 '(package-selected-packages
   '(beacon yaml-mode vertico-posframe key-chord consult-lsp cargo-mode cargo consult-ag tail company-lsp treemacs-tab-bar treemacs-persp treemacs-magit treemacs-icons-dired treemacs-projectile treemacs-evil treemacs multiple-cursors magit marginalia orderless consult vertico company format-all elisp-format lsp-mode doom-themes)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(completions-common-part ((t nil)))
 '(flycheck-error ((t (:background "mistyrose" :underline (:color "red" :style wave :position 0)))))
 '(flyspell-incorrect ((t (:background "mistyrose" :underline (:color "#D70000" :style wave :position nil)))))
 '(orderless-match-face-0 ((t (:background "darkseagreen1" :foreground "#183969" :weight bold))))
 '(orderless-match-face-1 ((t (:background "palegreen1" :foreground "#6f0643" :weight bold))))
 '(orderless-match-face-2 ((t (:background "green2" :foreground "#063f0a" :weight bold))))
 '(org-level-1 ((t (:background "LightSteelBlue1" :foreground "black" :weight bold :height 1.3))))
 '(org-level-2 ((t (:background "honeydew2" :foreground "black" :weight bold :height 1.2))))
 '(org-level-3 ((t (:background "lemonchiffon1" :foreground "black" :weight bold :height 1.1))))
 '(org-level-4 ((t (:background "mistyrose" :foreground "black" :weight bold :height 1.05)))))


;; Initialize package sources
(require 'package)

;; All package sources
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

;; Make sure all packages are loaded
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; Install use-package for easier package management
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

;; Use packeage must be loaded
(require 'use-package)
(setq use-package-always-ensure t)

;; Add all files which needs to be laoded
(setq emacs-base-dir "~/.emacs.d/")
(load-file (expand-file-name "look.el" emacs-base-dir))
(load-file (expand-file-name "setup.el" emacs-base-dir))
(load-file (expand-file-name "key.el" emacs-base-dir))
(load-file (expand-file-name "treemacs.el" emacs-base-dir))
(load-file (expand-file-name "popwin.el" emacs-base-dir))
(load-file (expand-file-name "custom_command.el" emacs-base-dir))
(load-file (expand-file-name "minibuffer/setup.el" emacs-base-dir))
(load-file (expand-file-name "company.el" emacs-base-dir))
(load-file (expand-file-name "org.el" emacs-base-dir))
(load-file (expand-file-name "lang/setup.el" emacs-base-dir))
(load-file (expand-file-name "lang/lsp.el" emacs-base-dir))
(load-file (expand-file-name "lang/elisp.el" emacs-base-dir))
(load-file (expand-file-name "lang/java.el" emacs-base-dir))
(load-file (expand-file-name "lang/go.el" emacs-base-dir))
(load-file (expand-file-name "lang/rust.el" emacs-base-dir))
(load-file (expand-file-name "lang/c.el" emacs-base-dir))
(load-file (expand-file-name "lang/yaml.el" emacs-base-dir))
(load-file (expand-file-name "lang/dap/setup.el" emacs-base-dir))
(load-file (expand-file-name "lang/dap/rust.el" emacs-base-dir))
(load-file (expand-file-name "lang/treesitter.el" emacs-base-dir))
