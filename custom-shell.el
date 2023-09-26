
;; A command to generate ETAGS for any project
(defun etags-build () (interactive)
       "This will generate tags for *.go, *.c, *.coo, *.h, *.hpp files and will appand to TAGS file"
       (shell-command "find . -type f -name \"*.go\" -or -name \"*.ic\" -or -name \"*.cpp\" -or -name \"*.h\" -or -name \"*.hpp\" | xargs etags --append"))

;; A command to add ETAGS from go libs to your project Tags
(defun etags-add-go-lib-to-project-tags () (interactive)
       "This will generate tags for ~/go/.. (go libs), and update your TAGS file "
       (shell-command "find ~/go/ -type f -name \"*.go\" | xargs etags --append"))

;; Rebuild full tags for curent project and also add Go lib tags for search
(defun etags-go-full () (interactive)
       "This will generate new ETAGS file for this go project. I will also parse ~/go/.. folder to generate tags for go lib."
       (shell-command "find . -type f -name \"*.go\" -or -name \"*.cpp\" -or -name \"*.h\" -or -name \"*.hpp\" | xargs etags")
       (shell-command "find ~/go/ -type f -name \"*.go\" | xargs etags --append")
       )
