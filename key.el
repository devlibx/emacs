
;; Meta-Up down can go to next/preious paragraph
(global-set-key (kbd "ESC <up>") 'backward-paragraph)
(global-set-key (kbd "ESC <down>") 'forward-paragraph)

;; lsp-find-references - Meta-Shift (. or >)
;; Use M-. to find the source of the symobl. If you want to find all the
;; places wehre this symbol is used then used this
(global-set-key (kbd "M->") 'lsp-find-references)
