;; Install rust-mode or rustic
(use-package rust-mode
  :init
  (setq rust-mode-treesitter-derive t)
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


;; Setup cargo command to run this workspace
;; This will find all the modules from the workspace and allow us to pick one
(require 'cargo)
(defun my-cargo-run-package ()
  "List and run a specific Cargo package from the workspace."
  (interactive)
  (let* ((default-directory (locate-dominating-file default-directory "Cargo.toml"))
         (packages (split-string
                    (shell-command-to-string "cargo metadata --no-deps --format-version 1 | jq -r '.packages[].name'")
                    "\n" t))
         (package (completing-read "Select package: " packages)))
    (compile (concat "cargo run --package " package))))

