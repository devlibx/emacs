;;; package --- Summary
;;; Commentary:
;;; Code:


(use-package rust-mode
  :init
  (setq rust-mode-treesitter-derive t)
  :ensure t
  :hook ((rust-mode . lsp))
  :config


  ;; File format was not working on save - did following to fix it (29 Sept 2024)
  (setq rustic-format-trigger 'on-save)
  (setq rustic-format-display-method 'display-buffer)
  (setq lsp-rust-analyzer-cargo-watch-command "clippy")

  ;; Commented below to use above rustic-formate-trigger (29 Sept 2024) = TODO - delete it if auto-formatting is working
  ;; Use rust analyzer
  ;; (setq lsp-rust-analyzer-server-command '("rust-analyzer"))
  ;; Formate code on save with lsp-format
  ;; (add-hook 'lsp-mode-hook
  ;;           (lambda ()
  ;;             (when (derived-mode-p 'rust-mode)
  ;;               (add-hook 'before-save-hook #'lsp-format-buffer nil 'local))))
  )


;; Setup rustic
(use-package rustic
  :ensure t
  :hook (rustic-mode . flycheck-mode)
  :custom

  ;; Enable autoformatting on save
  (rustic-format-on-save t)

  ;; Start - Customize Rust Analyzer settings
  
  ;; Ensure rust-analyzer is used
  (rustic-analyzer-command '("rust-analyzer"))

  ;; Use lsp-mode with rustic
  (setq rustic-lsp-client 'lsp-mode)

  ;; Enable LSP and Company when entering rustic-mode
  (add-hook 'rustic-mode-hook 'lsp)
  (add-hook 'rustic-mode-hook 'company-mode)

  ;; Enable Flycheck for syntax checking
  (add-hook 'rustic-mode-hook 'flycheck-mode))

;; Have Cargo packages
(use-package cargo
  :ensure t
  :config
  (add-hook 'rust-mode-hook 'cargo-minor-mode))

;; Add flycheck-rust for Rust syntax checking
(use-package flycheck-rust
  :ensure t
  :after (flycheck rustic)
  :hook (flycheck-mode . flycheck-rust-setup))

;; Added Flycheck for Rust
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode)  ;; Enable Flycheck globally
  :config
  (add-to-list 'flycheck-checkers 'rustic-clippy))

;;; rust.el ends here)

