(use-package evil
	:ensure t
	:init
	(setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  (setq evil-want-C-u-scroll t)
	(evil-mode 1)
	)

;; improve keybindings in all buffers
(use-package evil-collection
	:ensure t
	:init
	(evil-collection-init))

(use-package evil-leader
	:ensure t
	)

;; evil remaps
(define-key evil-motion-state-map (kbd "C-h") 'evil-window-left)
(define-key evil-motion-state-map (kbd "C-j") 'evil-window-down)
(define-key evil-motion-state-map (kbd "C-k") 'evil-window-up)
(define-key evil-motion-state-map (kbd "C-l") 'evil-window-right)

(global-evil-leader-mode)
(evil-leader/set-leader ",")
(evil-leader/set-key
 "f" 'projectile-find-file
 "g" 'projectile-find-grep
 "`" 'projectile-switch-project
 "b" 'ivy-switch-buffer
 "h" 'ff-find-other-file
 "m" 'man
 "q" 'org-capture
 "1" 'eyebrowse-switch-to-window-config-1
 "2" 'eyebrowse-switch-to-window-config-2
 "3" 'eyebrowse-switch-to-window-config-3
 "r" 'lsp-find-references
 "d" 'lsp-find-definition
 "c" 'projectile-compile-project
 "t" 'vterm-other-window ;; open terminal
 "k" 'kill-buffer)
; (setq! evil-want-Y-yank-to-eol nil)

;; treat underscore as a part of a word (same as vim)
(modify-syntax-entry ?_ "w")

(add-hook 'c-mode-common-hook
					(lambda () (modify-syntax-entry ?_ "w")))

(defadvice evil-inner-word (around underscore-as-word activate)
	(let ((table (copy-syntax-table (syntax-table))))
		(modify-syntax-entry ?_ "w" table)
		(with-syntax-table table
			ad-do-it)))

(defalias 'forward-evil-word 'forward-evil-symbol)
;; --------
