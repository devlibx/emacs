
;; Load org mode for .org files
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

;; All values for TODO 
(setq org-todo-keywords
  '((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE")))

;; This will remove *<>* when we make something bold
(setq org-hide-emphasis-markers t)
(setq org-indent-mode t)

;; Use  dot instead of list
(font-lock-add-keywords 'org-mode
                          '(("^ *\\([-]\\) "
                             (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))

(use-package org-bullets
    :config
    (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))
