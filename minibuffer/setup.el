;; Install and configure `vertico` for vertical completion
(use-package vertico
  :init
  (vertico-mode))


;; Install and configure `consult` for various completion and search functions
(use-package consult
  :ensure t
  :config
  ()
  :bind
  (
   ;;   ("M-x" . consult-M-x)
   ("C-s" . consult-line)      ;; Bind `consult-line` to `C-s` for searching text in the buffer
   ("C-x b" . consult-buffer)  ;; Bind `consult-buffer` to `C-x b` for buffer switching
   ("C-x C-f" . consult-find)  ;; Bind `consult-find` to `C-x C-f` for file searching
   ("M-g g" . consult-goto-line) ;; Bind `consult-goto-line` to `M-g g` for line navigation
   ("M-g M-g" . consult-goto-line) ;; Alternative binding for line navigation
   ("M-s f" . consult-find)    ;; Bind `consult-find` to `M-s f` for file finding
   ("M-s g" . consult-ripgrep) ;; Bind `consult-ripgrep` to `M-s g` for text search
   ("M-s l" . consult-locate))) ;; Bind `consult-locate` to `M-s l` for locating files


(use-package orderless
  :ensure t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion)))))

;; Optional: Install `marginalia` for enhanced annotations
(use-package marginalia
  :after vertico
  :config
  (marginalia-mode))

(use-package consult-lsp
  :ensure t)

;;
;; (where-is 'execute-extended-command)
