
;; Load org mode for .org files
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

;; All values for TODO 
(setq org-todo-keywords
  '((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE")))
