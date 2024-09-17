;; Install and configure lsp-mode
(use-package lsp-mode
  :ensure t
  :commands lsp
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
  )

