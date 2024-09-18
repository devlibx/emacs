
;; Add lldb mode
(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'dap-lldb)  

;; Install and configure dap-mode
;; Note when your install lldb/llvm on OSX it will give a lldb and lldb-dap
;; lldb is the debuger but it is not DAP compatable
;; Use lldb-dap instead of lldb-vscode
(use-package dap-mode
  :ensure t
  :config
  (require 'dap-ui)
  (setq dap-lldb-debug-program '("/opt/homebrew/opt/llvm/bin/lldb-dap"))
  (setq dap-print-io t)
  (dap-mode 1)
  (dap-ui-mode 1))

