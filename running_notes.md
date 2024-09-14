
# I got this working to show help on error
;; Rust configuration
(use-package rust-mode
  :hook (rust-mode . lsp))

(use-package lsp-mode
  :commands lsp
  :config
  (setq lsp-rust-server 'rust-analyzer))

;; UI enhancements for LSP
(use-package lsp-ui
  :commands lsp-ui-mode
  :config
  ;; Enable the sidebar with diagnostics
  (setq lsp-ui-sideline-enable t)
  (setq lsp-ui-sideline-show-diagnostics t)
  (setq lsp-ui-doc-enable t)
  (setq lsp-ui-doc-show-with-cursor t)
  (setq lsp-ui-doc-include-signature t)
  (setq lsp-ui-peek-enable t)
  (setq lsp-ui-peek-list-width 40)  ;; Width of the peek window
  (setq lsp-ui-peek-fontify 'on-demand)  ;; When to fontify peek window
  (setq lsp-ui-imenu-enable t))   ;; Enable the Imenu integration

;; Syntax checking
(use-package flycheck
  :hook (lsp-mode . flycheck-mode))

;; Optional: Enable company-mode for autocompletion
(use-package company
  :hook (lsp-mode . company-mode))


