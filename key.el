;; Meta-Up down can go to next/preious paragraph
(global-set-key (kbd "ESC <up>") 'backward-paragraph)
(global-set-key (kbd "ESC <down>") 'forward-paragraph)

;; Bind C-z with undo
(global-set-key (kbd "C-z") (lambda () (interactive) (undo)))

;; Use consult to show all project symbole
(global-set-key (kbd "C-c s") 'consult-lsp-symbols)


;; Scale up/down window size
(global-set-key (kbd "M-+") (lambda () (interactive) (enlarge-window 1)))
(global-set-key (kbd "M-_") (lambda () (interactive) (enlarge-window -1))) 
(global-set-key (kbd "M-(") (lambda () (interactive) (enlarge-window-horizontally 1)))
(global-set-key (kbd "M-)") (lambda () (interactive) (enlarge-window-horizontally -1))) 

;; Open eldoc - this will popup the information about the symbol 
(define-key global-map (kbd "M-/") 'eldoc)

;; Change the behavior of C-k to kill the whole line
(global-set-key (kbd "C-k") 'kill-whole-line)


;; Issue with keycast - if I use this then the all things like LSP running, what analyzer is running etc. will not be shown
;; (use-package keycast
;;   :ensure t
;;   :config
;;   ;; Enable keycast mode to show key presses in the mode-line (footer)
;;   (add-to-list 'global-mode-string '("" keycast-mode-line))
;;   (keycast-mode-line-mode))
