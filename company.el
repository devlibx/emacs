;; Install and configure `company-mode`
(use-package company
  :ensure t
  :hook (emacs-lisp-mode . company-mode) ;; Enable `company-mode` for Emacs Lisp mode
  :config
  (global-company-mode)
  
  (setq company-idle-delay 0.1)
  (setq company-minimum-prefix-length 1)

  ;; Configure company to show suggestions in a vertical menu
  (setq company-tooltip-limit 10) 
  (setq company-tooltip-align-annotations t) 
  (setq company-require-match nil) 
  (setq company-dabbrev-downcase nil) 
  (setq company-transformers '(company-sort-by-backend-importance)) 
  (setq company-backends '((company-capf company-dabbrev company-files))))


