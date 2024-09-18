;; Install and configure lsp-mode
(use-package lsp-mode
  :ensure t
  :commands lsp
  :custom
  (lsp-rust-analyzer-cargo-watch-command "clippy")
  (lsp-eldoc-render-all t)
  (lsp-idle-delay 0.6)
  (lsp-inlay-hint-enable t) 
  (lsp-rust-analyzer-display-lifetime-elision-hints-enable "skip_trivial")
  (lsp-rust-analyzer-display-chaining-hints t)
  (lsp-rust-analyzer-display-lifetime-elision-hints-use-parameter-names nil)
  (lsp-rust-analyzer-display-closure-return-type-hints t)
  (lsp-rust-analyzer-display-parameter-hints nil)
  (lsp-rust-analyzer-display-reborrow-hints nil)

  :bind (:map lsp-mode-map
              ("M-RET" . lsp-execute-code-action)))

;; Enable lsp ui
(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode
  :hook (lsp-mode . lsp-ui-mode)
  :config
  (setq lsp-ui-sideline-show-hower t)
  (setq lsp-ui-doc-enable t)           ;; Enable inline documentation
  (setq lsp-ui-doc-use-webkit nil)     ;; Use native Emacs rendering
  (setq lsp-ui-doc-position 'top)      ;; Position of the documentation
  (setq lsp-ui-sideline-enable t)      ;; Enable sideline information
  (setq lsp-ui-sideline-show-symbol t) ;; Show symbol information in the sideline
  (setq lsp-ui-sideline-show-hover t)  ;; Show hover information in the sideline
  (setq lsp-ui-sideline-show-diagnostics t) ;; Show diagnostics in the sideline

  ;;  (lsp-ui-peek-always-show t)
  
  )

