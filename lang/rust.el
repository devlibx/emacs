;; Install rust-mode or rustic
(use-package rust-mode
  :ensure t
  :hook ((rust-mode . lsp))
  :config
  (setq lsp-rust-analyzer-server-command '("rust-analyzer")))

