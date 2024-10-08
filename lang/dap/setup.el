
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

;; Enabling only some features
(setq dap-auto-configure-features '(locals breakpoints  tooltip))

;; Add hydra mode
(use-package hydra
  :ensure t)

;; Automatically open DAP Hydra when debugging starts
(add-hook 'dap-session-created-hook
          (lambda (session)
            (dap-hydra)))


;; Starts DAP mode to setup tooltip
(require 'dap-ui)
(dap-ui-mode 1)
(dap-tooltip-mode 1)
(tooltip-mode 1)
(xterm-mouse-mode 1)


;; Function to evaluate and show variable on click
(defun dap-ui-show-variable-at-point ()
  "Show value of variable at point."
  (interactive)
  (let ((variable (thing-at-point 'symbol t)))
    (dap-ui-expressions-add variable)
    (dap-ui-expressions-refresh)))

;; Bind to mouse click (e.g., mouse-1 for left click)
(global-set-key (kbd "<mouse-2>") 'dap-ui-show-variable-at-point)
