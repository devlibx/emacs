### Setup Help
This is a custom Emacs setup for my own use. I has the followign setup:
1. Create ~/.emacs.d directory and ```git clone https://github.com/devlibx/emacs.git .```

```shell
Install following:
sudo apt-get install ripgrep ispell

Once Emacs starts:
M-x treestiter install language grammer
 > install rust

```

2. When it boots it will install any package which is neede. If this is fresh setup then it will take some time but it will setup all packages automatically.
3. Only one step is need at first time (Because i am using `doom-emacs` theam)
```shell
# Install doom-emacs:
M-x package-list-packages => Search for "doom-theams" => Install

# Note it is possible  you may not see "doom-theams" directly from M-x package-install. So use these steps.

```

4. (Optional) For go projects you will have to install gopls - make sure your adding `~/go/bin/` to your $PATH also

```shell
go install golang.org/x/tools/gopls@latest

# Added this file to a folder ~/.emacs.d/lisp/dap-mode/ 
wget https://raw.githubusercontent.com/emacs-lsp/dap-mode/master/dap-dlv-go.el
```

4. (Optional) For rust projects
```shell
# Make sure your have rust-analyzer installed
brew install rust-analyzer

# Package install - it should be there already
M-x package-install RET rust RET
```

We have also installed dap-mode which neds lldb installed. For OSX do ```brew install llvm```, and run the following command
```shell
# Important - do note just follow this - figure out where is the lldb command installed. May be it is installed with name llvm. Just make sure that your 
# have the binary configure in the followign command exists e.g. for linux it will be somewhare in /usr/local/bin/...
der
ln -s $(brew --prefix)/opt/llvm/bin/lldb-vscode $(brew --prefix)/bin/

Make sure the path in setup.el file: Given below is the snippet from current setup.el file
;; Content from setup.el file => Install DAP mode for debug
(use-package dap-mode
  :ensure t
  :config
  (setq dap-lldb-debug-program '("/usr/local/bin/lldb-vscode")))
```

---

#### Emacs and C++ Etags
Here some useful instruction to work with C++ projects. Yon can generate Etags using following commands and use Emacs shortcut keys to jump accross code.

```shell
# Generate etags for C++ project - this will generate TAGS file 
>> find . -name "*.cpp" -print -or -name "*.h" -print | xargs etags --append

Now you can use Etags to navigate code:
Jump to def                =  M-.
Go back                    =  M-,
List all tags with name    =  M-?

# For the first time you may have to point to TAGS file. It will be on the root of your project where you ran etags command.
```
<br>

Adding system files to etags:
When you run ETAGs in your directory, you will only get tags for your project. Suppose you have Go project then to generate tags from lib you will have to append tags from libs.

```shell
#For example this will pick all go files in libs and will add tags to your etags file
>> find ~/go/ -type f -name "*.go" | xargs etags --append
```

---

### Some comman commands

Important:
Time to time some old packages may be removed and if you setup this Emacs in new system you may have to do following
```shell
M-x package-refresh-contents
```


```shell
Help to get keys info:
C-h k
=> Now your can type type the key and get the help

# Code
C-c l s => consult-lsp-symboles  => This will show all symboles in the Project
C-c C-c C-r  => Run rust  (If you start with C-u then it will ask for user input also)
C-c C-c C-t  => Run rust test
 


# Fast navigation in code -> your can jump in code faster with these keys
M-e => end of next block
M-a => begining of next block
M-+ => Window size increase (Note my keyboard needs shift key to get +) 
M-_ => Winow size increase  (Note my keyboard needs shift key to gethash _ => it does note need shift to do - and to keep in same I used _)
M-( => Window size increase horizontally
M-) => Window size reduce horizontally
M-[ => Horizontally window increase (Note - no shift)
    M-] => Horizontally window reduce (Note - no shift)

# Org Mode
Generate HTML from .org file
C-c C-e h h => Generate HTML
C-c C-e h o => Generate HTML and alos opne in browse


Golang:
M-t => run current test
M-T => Run tests in file (M-shift-t)
am
# C - means the control key (left most)
# M - option key (cenete)
# Command - (right key)

# Buffer
C-x k => Kill buffer
C-x b => Swith buffer, new buffer etc

# Shell
M-! OR M-shift-1

# Treeemac (C-x t) is base
C-x t d => Open dire in tree (use this)
M-0     => Jump to tree view
C-x t t => Open Treemap

# Buffer split
C-x 0 => Close current buffer
C-x 1 => Full screen current buffer
C-x o => Jump to next buffer 
C-x 2 => Split vertical
C-x 3 => Split hor

# Project
Integration of projectile is done
C-c p => this is theam base keys for all commands

Open file from projetc -> C-c p f
Run grep on project    -> C-c p g



# Region
C-space => Set region start
-> You can combile it. 
C-space (set start mark)
C-E (will goto end of line)
M-W copy 

# up/down
C-v => Down
M-v => Up
Go to line => M-g g <line number>
Go to start/end of file => M-< M-> will go to start or end of file. Note you will have to press "Shift" also
(M+Shift)-< and (M-Shift)->

# Copy/Paste
C-x h => select all
C-w => Cut
M-w => Copy
C-y => Paste
C-k => Kill this line (delete this line - need to haev cursor ar start)
Since this is Kill - you can use C-y to paste
M-f / M-b => Move forward/backword word

# Git
M-x magit => Lauch
Tab onf anything with ... => this will epxand it
? on magit =? this will show all option e.g. stash/push/fetch
s/u => stash or unstash a file

How to commit using Magit:
M-x magit-commit
- Stage files and now you must add some comments and to continue with commit C-c C-c
- This will commit the code
M-x magit-push => p

Revert change in file:
M-x magit-status
-> select file and "k"


# Consult commands
 ("C-s" . consult-line)                ;; Bind `consult-line` to `C-s` for searching text in the buffer
 ("C-x b" . consult-buffer)            ;; Bind `consult-buffer` to `C-x b` for buffer switching
 ("C-x C-f" . consult-find)            ;; Bind `consult-find` to `C-x C-f` for file searching
 ("M-g g" . consult-goto-line)         ;; Bind `consult-goto-line` to `M-g g` for line navigation
 ("M-g M-g" . consult-goto-line)       ;; Alternative binding for line navigation
 ("M-s f" . consult-find)              ;; Bind `consult-find` to `M-s f` for file finding
 ("M-s g" . consult-ripgrep)           ;; Bind `consult-ripgrep` to `M-s g` for text search
 

```


### Some more help
```shell

# What action is with this key:
C-h k => then press theam key

C-h m => show all keys mapping in this mode (it will show the mode specific things)

# Go debugging
M-n => Next
M-N => Step In

```

