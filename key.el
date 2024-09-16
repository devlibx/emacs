;; Meta-Up down can go to next/preious paragraph
(global-set-key (kbd "ESC <up>") 'backward-paragraph)
(global-set-key (kbd "ESC <down>") 'forward-paragraph)

;; Bind C-z with undo
(global-set-key (kbd "C-z") (lambda () (interactive) (undo)))
