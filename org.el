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


;; Customize org-mode heading faces (background colors for different levels)
(custom-set-faces
 ;; Customize level 1 heading (most prominent)
 '(org-level-1 ((t (:background "LightSteelBlue1" :foreground "black" :weight bold :height 1.3))))
 ;; Customize level 2 heading
 '(org-level-2 ((t (:background "honeydew2" :foreground "black" :weight bold :height 1.2))))
 ;; Customize level 3 heading
 '(org-level-3 ((t (:background "lemonchiffon1" :foreground "black" :weight bold :height 1.1))))
 ;; Customize level 4 heading
 '(org-level-4 ((t (:background "mistyrose" :foreground "black" :weight bold :height 1.05)))))
