
;; Add lldb mode
(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'dap-lldb)  

;; Install and configure dap-mode
(use-package dap-mode
  :ensure t
  :config
  (require 'dap-ui)
  (setq dap-lldb-debug-program '("/opt/homebrew/bin/lldb-vscode"))
  (setq dap-print-io t)
  (dap-mode 1)
  (dap-ui-mode 1))

