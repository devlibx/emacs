
(setq dap-debug-verbose t)
(setq dap-debug-log-level 'debug)
;; (setq debug-on-error t)

;; Add launch template
(eval-after-load "dap-mode"
  '(progn
     (setq dap-debug-verbose t)
     (setq dap-debug-log-level 'debug)
     ))
