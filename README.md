### How to setup emacs
1. Create a dir ```.emacs.d```, and copy content of this folder in that folder.
2. When you start emacs then it will install everything.
3. First time - M-x list all packages (package-install does not list it and you will have do to it manually) => install "doom-theams" => restart 

---

### Packages installed 
Incase your setup Emaca again then ensure your have these packages installed. It should automatically set-up things.

```shell
# This is just a backou to setup fresh

# Auto complete help - this will give help as your type
company

# M-x auto complete help - this will help as tou type M-x command
smex

# Installed LLDB debuger - Forgot LLDB your need to installed DAP
dap-mode
 -> This should install lldb also
 -> In theam config file your will see we are setting "/usr/local/bin/lldb-vscode". This is needed forgot LLDb debuger
 -> Your will have in install lldb debuger. In case of Max installed "brew install llvm"
 -> The following was need to bind lldb-vscode command as a soft link
 -> ln -s $(brew --prefix)/opt/llvm/bin/lldb-vscode $(brew --prefix)/bin/

```

### Emacs and C++ ETAGS
```shell
# Generate etags for C++ project
# This will generate TAGS file 

find . -name "*.cpp" -print -or -name "*.h" -print | xargs etags --append


# Nowin emacs "Meta and ."
M-. => First time point to the TAGS file which will be at the root of this project

Next time you can use jump and other munction e.g. M-. will jump to the def of the func


# Few commands
Jump to def =  M-.
Go back     =  M-,
List all tags with name   =  M-?


# When you run ETAGs in your directory, you will only get tags for your project. Suppose you have Go project
# To generate tags from lib you will have to append tags from libs also
# For example this will pick all go files in libs and will add tags to your etags file


find ~/go/ -type f -name "*.go" | xargs etags --append

```

### Command Help

Important:
Time to time some old packages may be removed and if you setup this Emacs in new system you may have to do following
```shell
M-x package-refresh-contents
```


```shell
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
    - Stage files and now you must add some comments and to continue with commit C-c C-x
	- This will commit the code
M-x magit-push => p


# Multi cursor
# https://github.com/magnars/multiple-cursors.el
Select a word => M-x mark-all-works-like-this

# Work with multi-line ( C-x l)
Select => M-x mc/edit-lines => Do anything
	e.g. M-x ms/insert-numbers

# Display line numbers
M-x global-display-line-numbers-mode
	
		# Or in your init file add following
  	(add-hook 'prog-mode-hook 'global-display-line-numbers-mode)

# Change theam -> dont forgot to save it (ther is save setting hyperlink"
M-x customize-themes
```
