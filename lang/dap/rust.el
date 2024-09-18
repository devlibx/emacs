
(setq dap-debug-verbose t)
(setq dap-debug-log-level 'debug)
(setq debug-on-error t)

;; Add launch template
(eval-after-load "dap-mode"
  '(progn
     (setq dap-debug-verbose t)
     (setq dap-debug-log-level 'debug)
     (dap-register-debug-template "LLDB (VS Code - New) :: Run Configuration"
                                  (list :type "lldb-vscode"					
                                        :request "launch"
					:cwd (projectile-project-root)
                                        :program (expand-file-name "target/debug/untitled" default-directory)
					:preLaunchTask "cargo build"
                                        :name "LLDB::Run"))))
