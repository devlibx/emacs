
(setq dap-debug-verbose t)
(setq dap-debug-log-level 'debug)
;; (setq debug-on-error t)

;; Add launch template
(eval-after-load "dap-mode"
  '(progn
     (setq dap-debug-verbose t)
     (setq dap-debug-log-level 'debug)

     (dap-register-debug-template "Rust - devlibx-rust-http"
                                  (list :type "lldb-vscode"					
                                        :request "launch"
					:cwd (projectile-project-root)
                                        :program (expand-file-name "target/debug/devlibx-rust-http" default-directory)
					:preLaunchTask "cargo build"
                                        :name "LLDB::Run"))
     (dap-register-debug-template "Rust - devlibx-rust-base"
                                  (list :type "lldb-vscode"					
                                        :request "launch"
					:cwd (projectile-project-root)
                                        :program (expand-file-name "target/debug/devlibx-rust-base" default-directory)
					:preLaunchTask "cargo build"
                                        :name "LLDB::Run"))

     ))
