;;; go.el --- Go development environment setup -*- lexical-binding: t; -*-
;;; Commentary:
;; This file sets up the Go environment with features such as go-mode.

;;; Code:

(use-package go-mode
  :ensure t
  :hook ((before-save . gofmt-before-save)
	 (go-mode . flycheck-mode)
	 (go-mode . lsp))
  :config
  (setq gofmt-command "goimports"))
;;; go.el ends here
