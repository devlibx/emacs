
;; Meta-Up down can go to next/preious paragraph
(global-set-key (kbd "ESC <up>") 'backward-paragraph)
(global-set-key (kbd "ESC <down>") 'forward-paragraph)

;; lsp-find-references - Meta-Shift (. or >)
(global-set-key (kbd "M->") 'lsp-find-references)
