

;; Vertico: A minimalistic completion UI
(use-package vertico
  :ensure t
  :init
  (vertico-mode))  ;; Enable vertico globally

;; Marginalia: Annotate minibuffer completions with additional info
(use-package marginalia
  :ensure t
  :after vertico
  :init
  (marginalia-mode))  ;; Enable marginalia globally

;; Consult: Various commands to enhance completion and search
(use-package consult
  :ensure t
  :bind (("C-s" . consult-line)  ;; Search for text in the buffer
         ("C-x b" . consult-buffer)  ;; Switch buffers
         ("M-s f" . consult-find)  ;; Find files
         ("M-s g" . consult-grep)  ;; Grep search
         ("M-s l" . consult-locate)  ;; Locate files
         ("M-s m" . consult-multi-occur)  ;; Search for text in multiple buffers
         ("M-s r" . consult-ripgrep)  ;; Ripgrep search
         ("M-s i" . consult-imenu))  ;; Navigate to functions and variables
  :config
  (setq consult-narrow-key "<")  ;; Set the key to narrow search results
  (setq consult-preview-key 'any)  ;; Preview search results immediately
  (setq consult-project-root-function #'consult-project-root))  ;; Project root

;; Optionally: Enable `orderless` for enhanced sorting and filtering
(use-package orderless
  :ensure t
  :after vertico
  :config
  (setq completion-styles '(orderless)))  ;; Use `orderless` for completion
