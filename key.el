
;; Meta-Up down can go to next/preious paragraph
(global-set-key (kbd "ESC <up>") 'backward-paragraph)
(global-set-key (kbd "ESC <down>") 'forward-paragraph)

;; lsp-find-references - Meta-Shift (. or >)
;; Use M-. to find the source of the symobl. If you want to find all the
;; places wehre this symbol is used then used this
(global-set-key (kbd "M->") 'lsp-find-references)

;; Run current test in go using this
(add-hook 'go-mode-hook (lambda ()
			  (local-set-key (kbd "M-t") 'go-test-current-test)
			  (local-set-key (kbd "M-T") 'go-test-current-file)))
