(use-package org
  :mode ("\\.org\\'" . org-mode))


;; Load org mode for .org files
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

;; All values for TODO 
(setq org-todo-keywords
      '((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE")))

;; This will remove *<>* when we make something bold
(setq org-hide-emphasis-markers t)
(setq org-indent-mode t)
(setq org-startup-indented t)

;; Collapse all when opened
(setq org-startup-folded t)

;; Use  dot instead of list
(font-lock-add-keywords 'org-mode
                        '(("^ *\\([-]\\) "
                           (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))

;; This will fixed all * in all headline - we will use dot instead of * in headings
(use-package org-bullets
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))


;; Dont know what it does
(add-hook 'org-mode-hook 'visual-line-mode)

