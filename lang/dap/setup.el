
;; Add lldb mode
(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'dap-lldb)  

;; Install and configure dap-mode
(use-package dap-mode
  :ensure t
  :config
  (require 'dap-ui)
  (dap-mode 1)
  (dap-ui-mode 1))

