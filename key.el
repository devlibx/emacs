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
