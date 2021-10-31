;; main
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(setq sml/no-confirm-load-theme t)

;; Requires
;; (require 'magit)

(require 'which-key)
(which-key-mode)

(require 'org)

(require 'evil)
(evil-mode 1)

(add-to-list 'load-path "~/.emacs.d/ext-packages")
(load-library "evil-leader")
(load-library "work")
(load-library "evil-magit")

(require 'evil-magit)
(require 'evil-leader)

(require 'projectile)
(projectile-mode +1)

(require 'ivy)
(ivy-mode 1)
;; Recommended keymap prefix on Windows/Linux
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(require 'ccls)
(setq ccls-executable "/usr/bin/ccls")

(require 'ggtags)

 
;; Load theme
;; (load-theme 'gruvbox-dark-soft)
;; (load-theme 'sanityinc-tomorrow-eighties t)
(load-theme 'sanityinc-tomorrow-eighties t)

;; relative numbers
(defvar my-linum-current-line-number 0)

(setq linum-format 'my-linum-relative-line-numbers)

(defun my-linum-relative-line-numbers (line-number)
  (let ((test2 (- line-number my-linum-current-line-number)))
    (propertize
     (number-to-string (cond ((<= test2 0) (* -1 test2))
                             ((> test2 0) test2)))
     'face 'linum)))

(defadvice linum-update (around my-linum-update)
  (let ((my-linum-current-line-number (line-number-at-pos)))
    ad-do-it))
(ad-activate 'linum-update)

(global-linum-mode t)


;; projectile remap
(define-key evil-motion-state-map (kbd "C-h") 'evil-window-left)
(setq projectile-indexing-method 'alien)


;; evil-mode remaps
(define-key evil-motion-state-map (kbd "C-h") 'evil-window-left)
(define-key evil-motion-state-map (kbd "C-j") 'evil-window-down)
(define-key evil-motion-state-map (kbd "C-k") 'evil-window-up)
(define-key evil-motion-state-map (kbd "C-l") 'evil-window-right)

(global-evil-leader-mode)
(evil-leader/set-leader ",")
(evil-leader/set-key
  "f" 'projectile-find-file
  "g" 'projectile-find-grep
  "r" 'ggtags-grep
  "`" 'projectile-switch-project
  "b" 'switch-to-buffer
  "k" 'kill-buffer)


;; ggtags


(setq-local imenu-create-index-function #'ggtags-build-imenu-index)
(add-hook 'c-mode-common-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
              (ggtags-mode 1))))

(define-key ggtags-mode-map (kbd "C-c g s") 'ggtags-find-other-symbol)
(define-key ggtags-mode-map (kbd "C-c g h") 'ggtags-view-tag-history)
(define-key ggtags-mode-map (kbd "C-c g r") 'ggtags-find-reference)
(define-key ggtags-mode-map (kbd "C-c g f") 'ggtags-find-file)
(define-key ggtags-mode-map (kbd "C-c g c") 'ggtags-create-tags)
(define-key ggtags-mode-map (kbd "C-c g u") 'ggtags-update-tags)

(define-key ggtags-mode-map (kbd "M-,") 'pop-tag-mark)


;; gdb
(setq
 ;; use gdb-many-windows by default
 gdb-many-windows t

 ;; Non-nil means display source file containing the main routine at startup
 gdb-show-main t
 )


;; org
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(define-key evil-motion-state-map (kbd "C-g") 'org-open-at-point)

;; macos
(setq mac-option-key-is-meta nil
      mac-command-key-is-meta t
      mac-command-modifier 'meta
      mac-option-modifier 'none)

