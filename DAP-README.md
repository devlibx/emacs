# How to run test - Rust Specific
Problem - rust does not give a specific name for the test exe file. You can run 'rustic-cargo-current-test' but it does not go to debug mode.

##### Solve
  
   (1) 'Rust Run' to run the main program in debug mode.
   
   (2) 'Rust Test - Ask' to provide the test case binary name. You need to run `cargo test --no-run` to get the binary for each file. Use the name like `unittests src/main.rs (target/debug/deps/devlibx_http-a6cab092a6d3a415)`

   (3) `Rust Test - Fixed Test Name` Instead of putting name everytime you can just give the file name here. You can also provide the specific test name e.g. `test_execute` or for all `test`
   
```elisp
;; Add these to .local.el file in curr direactory.

(dap-register-debug-template "Rust Run"
			     (list :type "lldb-vscode"
				   :request "launch"
				   :preLaunchTask "cargo build"
				   :program (expand-file-name "target/debug/devlibx-http" default-directory)
				   :cwd (projectile-project-root)
				   ))


(dap-register-debug-template "Rust Test - Ask"
			     (list :type "lldb-test"
				   :request "launch"
				   :cwd (projectile-project-root)
				   :program nil
				   :args '("test" "--nocapture")
				   :stop-at-entry t
				   ))
(dap-register-debug-template "Rust Test - Fixed Test Name"
			     (list :type "lldb-vscode"
				   :request "launch"
				   :program (expand-file-name "target/debug/deps/devlibx_http-a6cab092a6d3a415" default-directory)
				   :args '("--nocapture" "test_execute")
				   :cwd (projectile-project-root)
				   :stop-at-entry t
				   ))

```

