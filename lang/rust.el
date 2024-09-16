;; Install rust-mode or rustic
(use-package rust-mode
  :ensure t
  :hook ((rust-mode . lsp))
  :config

  ;; Use rust analyzer
  (setq lsp-rust-analyzer-server-command '("rust-analyzer"))

  ;; Formate code on save with lsp-format
  (add-hook 'lsp-mode-hook
            (lambda ()
              (when (eq major-mode 'rust-mode)
                (add-hook 'before-save-hook #'lsp-format-buffer nil 'local))))
  )


;; Have Cargo packages
(use-package cargo
  :ensure t
  :config
  (add-hook 'rust-mode-hook 'cargo-minor-mode)
  )

