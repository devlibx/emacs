
					; Emable line numbers in all buffers by default
(add-hook 'prog-mode-hook 'global-display-line-numbers-mode)

;; Enable IDO mode - this will help with auto-complete the file path
(require 'ido)
(ido-mode 1)

;; This will disable auto save to avoid creating #..# files
(auto-save-mode -1)
(setq auto-save-default nil
      make-backup-files nil)

;; Setup company mode
;; Always enable auto complete
;; Auto complete delay is 0
(use-package company
  :ensure t
  :config
  (set 'company-auto-complete t)
  (set 'company-idle-delay 0)

  ;; enable Company mode in all buffers
  (add-hook 'after-init-hook 'global-company-mode)
  )

;; Install SMEX package - it helps us to auto complete M-x command
(use-package smex
  :ensure t
  :init
  (smex-initialize)
  :config
  (global-set-key (kbd "M-x") 'smex)
  (global-set-key (kbd "M-X") 'smex-major-mode-commands)
  (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
  )

;; Install Magit
(use-package magit
  :ensure t)

;; Setup projectile
;; Setq my default project location in search path
(use-package projectile
  :ensure t
  :config
  (setq projectile-project-search-path
	'("/Users/harishbohara/workplace/personal" "/Users/harishbohara/workplace")))

;; Install DAP mode for debug
(use-package dap-mode
  :ensure t
  :config
  (setq dap-lldb-debug-program '("/usr/local/bin/lldb-vscode")))


;; Enable multi select
(use-package multiple-cursors
  :ensure t
  :config
  (global-set-key (kbd "C-x l") 'mc/edit-lines))

;; Make sure go-mode is installed
(use-package go-mode
  :ensure t)

;; Go testing framework
(use-package gotest
  :ensure t)

;; Make sure yasnippet is installed - I think it is needed in Go LSP mode
(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode 1))


;; Setup LSP mode for C++
(add-hook 'c-mode-hook 'lsp)
(add-hook 'c++-mode-hook 'lsp)
(add-hook 'go-mode-hook 'lsp)

