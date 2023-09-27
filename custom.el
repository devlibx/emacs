;; Git clean any change in local dir
;; Delete files and dir
(defun git-clean () (interactive)
  (shell-command "git clean -f -d; git checkout .;"))

;; Kill all buffer will kill all the open buffers
;; Here we loop through all buffers and kill them at one shot
(defun kill-all-buffers ()
  (interactive)
  (let ((buffers (buffer-list))
	(buffer-name nil)) 
    (while buffers
      (setq buffer-name (buffer-name (car buffers)))
      (kill-buffer buffer-name)
      (setq buffers (cdr buffers)))))

;; A shortcut for kill all buffer 
(defun kab () (interactive) (kill-all-buffers))

;; Git command short-cuts
(defun commit () (interactive) (magit-commit-create))
;; (defun push () (interactive) (magit-push-current-to-pushremote nil))

;; A shortcut for decrupt
(defun decrypt () (interactive) (epa-decrypt-region (region-beginning) (region-end)))


;; Copy selected context - this will go to clipboard
(defun copy () (interactive)
  (let ((deactivate-mark t))
    (call-process-region (point) (mark) "pbcopy")))

;; Enlarge window
(defun inc-vertical-win-size(x) (interactive "nEnter size to increase: ") (enlarge-window x))

;; Helper to format json and copy to clipboard
(defun json-pretty-and-copy() (interactive)
       (json-pretty-print (region-beginning) (region-end))
       (copy)
       )

;; ------------------------------------------------- LLDB Debugger setup ---------------------------------------------;
(dap-register-debug-template "MySQL_Debug"
 (list :type "lldb-vscode"
       :request "launch"
       :name "LLDB::Run"
       :program "/Users/harishbohara/workplace/personal/mysql-server/build/bin/mysqld"
       :args '("--basedir=/Users/harishbohara/Downloads/kuda/mysq_data/base")
       :cwd "/Users/harishbohara/workplace/personal/mysql-server"
       :dap-server-port 12345
       :dap-server-host "localhost"))
;; --------------------------------------------------------------------------------------------------------------------
