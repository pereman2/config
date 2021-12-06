;; main
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(setq sml/no-confirm-load-theme t)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

;; Requires
;; (require 'magit)
(require 'package)

(setq package-archives
      '(("marmalade" . "http://marmalade-repo.org/packages/")
        ("melpa" . "http://melpa.org/packages/")
        ("melpa-stable" . "https://stable.melpa.org/packages/")))

;; (package-initialize)
;; TODO: move to use package
;; (use-package flycheck
;;   :ensure t
;;   :init (global-flycheck-mode))

(use-package multi-term
  :ensure)
(use-package which-key
  :ensure)
(use-package treemacs
  :ensure)
(use-package treemacs-evil
  :ensure)
(use-package treemacs-projectile
  :ensure)
(use-package lsp-treemacs
  :ensure)
(which-key-mode)

(use-package org
  :ensure)
(use-package org-bullets
  :ensure)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))


(use-package evil
  :ensure)
(evil-mode 1)

(add-to-list 'load-path "~/.emacs.d/ext-packages")
(load-library "evil-leader")
(load-library "work")
(load-library "evil-magit")

(require 'evil-magit
         :ensure)
(require 'evil-leader
         :ensure)

(use-package projectile
  :ensure)
(projectile-mode +1)
(setq projectile-enable-caching t)

(use-package ivy
  :ensure)
(ivy-mode 1)
;; Recommended keymap prefix on Windows/Linux
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(use-package ccls)
(setq ccls-executable "/usr/bin/ccls")

(use-package ggtags
  :ensure
  )

(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
         ;; (XXX-mode . lsp)
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)

(use-package lsp-python-ms
  :ensure t
  :init (setq lsp-python-ms-auto-install-server t)
  :hook (python-mode . (lambda ()
                         (require 'lsp-python-ms)
                         (lsp))))  ; or lsp-deferred

(use-package creamsody-theme
  :ensure
  )

(use-package good-scroll
  :ensure
  :config
  (good-scroll-mode 1)
  )

(use-package ergoemacs-status
  :ensure
  :config
  (ergoemacs-status-mode 1)
  )

  (use-package hl-todo
    :hook (prog-mode . hl-todo-mode)
    :config
    (setq hl-todo-highlight-punctuation ":"
          hl-todo-keyword-faces
          `(("TODO"       warning bold)
            ("FIXME"      error bold)
            ("HACK"       font-lock-constant-face bold)
            ("REVIEW"     font-lock-keyword-face bold)
            ("NOTE"       success bold)
            ("DEPRECATED" font-lock-doc-face bold))))

(use-package typescript-mode
  :ensure
  )

(use-package benchmark-init
  :ensure t
  :config
  ;; To disable collection of benchmark data after init is done.
  (add-hook 'after-init-hook 'benchmark-init/deactivate))
(use-package vterm
  :ensure t
  :load-path  "path/to/emacs-libvterm/")

;; Load theme
;; (load-theme 'gruvbox-dark-soft)
;; (load-theme 'sanityinc-tomorrow-eighties t)
;; (load-theme 'sanityinc-tomorrow-eighties t)
;; (load-theme 'sanityinc-tomorrow-bright t)
;; (load-theme 'sanityinc-tomorrow-night t)
;; (load-theme 'zenburn t)
(load-theme 'creamsody t)

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
  "h" 'ff-find-other-file
  "m" 'man
  "c" 'compile
  "t" 'vterm ;; open terminal
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


;; underscore as word
(modify-syntax-entry ?_ "w")

;; todoist
(setq todoist-token "9a393c690f335cf9f137f418d9257717866d5c23")

;; lsp
(setq gc-cons-threshold 100000000)
(setq read-process-output-max (* 1024 1024)) ;; 1mb
(setq lsp-idle-delay 0.500)

(add-hook 'c-mode-hook 'lsp)
(add-hook 'c++-mode-hook 'lsp)
(lsp-mode 1)
(lsp-treemacs-sync-mode 1)

