;; Setup basic settings for language
(show-paren-mode 1) ;; Enable parenthesis matching
(setq show-paren-delay 0)  ;; No delay in showing match
(setq show-paren-style 'parenthesis)  ;; Highlight only the matching paren

;; Match parenthesis
(electric-pair-mode 1)

;; Ensure lsp-mode recognizes Emacs Lisp
(with-eval-after-load 'lsp-mode
  (add-to-list 'lsp-language-id-configuration
               '(emacs-lisp-mode . "emacs-lisp")))


;; Optionally install and configure company-lsp for completion
(use-package company
  :ensure t
  :config
  (add-hook 'after-init-hook 'global-company-mode))



;; This will ensure that we get proper parameter completion after auto complete
(use-package yasnippet
  :ensure t
  :init
  :config
  ;; Enable yasnippet globally
  (yas-global-mode 1)
  ;; Ensure yasnippet is enabled in programming modes
  (add-hook 'prog-mode-hook #'yas-minor-mode)
  )

