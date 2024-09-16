;; Install and configure lsp-mode
(use-package lsp-mode
  :ensure t
  :commands lsp
  :hook ((rust-mode . lsp)
         (rustic-mode . lsp))
  :config
  (setq lsp-rust-analyzer-server-command '("rust-analyzer"))
  (setq lsp-rust-analyzer-cargo-watch-command "clippy"))

;; Install rust-mode or rustic
(use-package rust-mode
  :ensure t
  :hook (rust-mode . lsp))

