
;; Meta-Up down can go to next/preious paragraph
(global-set-key (kbd "ESC <up>") 'backward-paragraph)
(global-set-key (kbd "ESC <down>") 'forward-paragraph)

;; Scale up/down window size
(global-set-key (kbd "M-+") (lambda () (interactive) (enlarge-window 1)))
(global-set-key (kbd "M-_") (lambda () (interactive) (enlarge-window -1)))
;; (global-set-key (kbd "M-[") (lambda () (interactive) (enlarge-window-horizontally 1)))
;; (global-set-key (kbd "M-]") (lambda () (interactive) (enlarge-window-horizontally -1)))


;; lsp-find-references - Meta-Shift (. or >)
;; Use M-. to find the source of the symobl. If you want to find all the
;; places wehre this symbol is used then used this
(global-set-key (kbd "M->") 'lsp-find-references)

;; Run current test in go using this
(add-hook 'go-mode-hook (lambda () 
			  (local-set-key (kbd "M-t") 'go-test-current-test)
			  (local-set-key (kbd "M-T") 'go-test-current-file)

			  ;; Debug related keys
			  (local-set-key (kbd "M-n") 'dap-next)
			  (local-set-key (kbd "M-N") 'dap-step-in)
))

;; Enable symbol info on hover
;; This will enable lsp-ui-sideline-toggle-info
(setq lsp-ui-sideline-show-hover t)

;; This is a useful hook
;; Whenever we get a brakpoint the hydra will come-up to give debug keys
(add-hook 'dap-stopped-hook
	  (lambda (arg) (call-interactively #'dap-hydra)))
