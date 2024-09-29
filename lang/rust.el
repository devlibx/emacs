;; Install rust-mode or rustic
(use-package rust-mode
  :init
  (setq rust-mode-treesitter-derive t)
  :ensure t
  :hook ((rust-mode . lsp))
  :config


  ;; File format was not working on save - did following to fix it (29 Sept 2024)
  (setq rustic-format-trigger 'on-save)
  (setq rustic-format-display-method 'display-buffer)

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
  :custom

  ;; Use Clippy as the default cargo check command
  (rustic-cargo-check-arguments "--clippy")

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

;; TODO - Delete this => This will find the sub module in the rust workspace project. Delete it if it is not used
;; Setup cargo command to run this workspace
;; This will find all the modules from the workspace and allow us to pick one
;; (require 'cargo)
;; (defun my-cargo-run-package ()
;;   "List and run a specific Cargo package from the workspace."
;;   (interactive)
;;   (let* ((default-directory (locate-dominating-file default-directory "Cargo.toml"))
;;          (packages (split-string
;;                     (shell-command-to-string "cargo metadata --no-deps --format-version 1 | jq -r '.packages[].name'")
;;                     "\n" t))
;;          (package (completing-read "Select package: " packages)))
;;     (compile (concat "cargo run --package " package))))

