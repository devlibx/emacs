#+EXPORT_FILE_NAME: ~/Downloads/kuda/harish.html
#+SETUPFILE: ~//.emacs.d/org/theams/theme-readtheorg/theme-readtheorg.setup

* Export file to HTML
- Added the above e.g. #+EXPORT_FI... and #+SETUP... in your .org file
- C-c C-e h h
  - It will output theams single html file in export location

* Style and Text Formating
  - *<>* => *Things will be bold here*
  - /<>/ => /Thing will be italic here/
  - _<>_ => _Thing will have underline here_
  - M-x  => Insert a link


** Code block
Your can use following to add code block. Use them languge name to get text heighliting
#+begin_src emacs-lisp
M-x org-insert-structure-template
#-end_src
    
* List
  1. Your can make any lists wiht *, _, number
	 If your just enter then them text will be under them item. 
	 If you do M-<enter>, it will add a new item
  2. You can use Shift-<left/right> to changed style
  3. M-<left/right> will changed level of list
	 This means your can bring next item under this item by M-right
	 
* Working with TODO
- Any item *Only Heading*, if starts with TODO will become TODO item
- Shift-<left/right> will make them DONE
  
  
