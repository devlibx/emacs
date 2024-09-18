
;; Add launch template
(eval-after-load "dap-mode"
  '(progn
     (dap-register-debug-template "LLDB (VS Code - New) :: Run Configuration"
                                  (list :type "lldb-vscode"
                                        :cwd default-directory
                                        :request "launch"
                                        :program (expand-file-name "target/debug/untitled" default-directory)
					:preLaunchTask "cargo build"
                                        :name "LLDB::Run"))))
