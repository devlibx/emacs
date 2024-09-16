

;; Enable lsp ui
(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode
  :hook (lsp-mode . lsp-ui-mode))
