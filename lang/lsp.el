;; Install and configure lsp-mode
(use-package lsp-mode
  :ensure t
  :commands lsp
  :config
  ;; (setq lsp-log-io t)  ;; Log all LSP communication
  ;; (setq lsp-trace t)   ;; Enable tracing (for debugging)
  ;; (setq lsp-print-io t)
  )

;; Enable lsp ui
(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode
  :hook (lsp-mode . lsp-ui-mode))

