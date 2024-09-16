(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(tail company-lsp treemacs-tab-bar treemacs-persp treemacs-magit treemacs-icons-dired treemacs-projectile treemacs-evil treemacs multiple-cursors magit marginalia orderless consult vertico company format-all elisp-format lsp-mode doom-themes)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


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
(load-file (expand-file-name "custom_command.el" emacs-base-dir))
(load-file (expand-file-name "minibuffer/setup.el" emacs-base-dir))
(load-file (expand-file-name "company.el" emacs-base-dir))
(load-file (expand-file-name "lang/setup.el" emacs-base-dir))
(load-file (expand-file-name "lang/lsp.el" emacs-base-dir))
(load-file (expand-file-name "lang/elisp.el" emacs-base-dir))
(load-file (expand-file-name "lang/java.el" emacs-base-dir))
(load-file (expand-file-name "lang/go.el" emacs-base-dir))
(load-file (expand-file-name "lang/rust.el" emacs-base-dir))
(load-file (expand-file-name "lang/c.el" emacs-base-dir))
