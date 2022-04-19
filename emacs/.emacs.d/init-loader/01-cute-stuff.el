(use-package solarized-theme
	:ensure t
	)
(use-package grandshell-theme
	:ensure t
	)

(use-package powerline
  :ensure t
  :demand
  :init
  (powerline-default-theme)
  (put 'erase-buffer 'disabled nil)
  (add-hook 'after-init-hook 'powerline-reset))

(defun font-jetbrains()
	(interactive)
	(add-to-list 'default-frame-alist '(font . "JetBrains Mono-11"))
	(add-to-list 'default-frame-alist '(line-spacing . 0.2))
	)
(defun font-terminus()
	(interactive)
	(add-to-list 'default-frame-alist '(font . "Terminus-14"))
	(add-to-list 'default-frame-alist '(line-spacing . 0.2))
	)
; (font-jetbrains)
(font-terminus)
; (load-theme 'solarized-dark)
(load-theme 'zenburn)
;; (load-file "~/.emacs.d/init-loader/solarized-selenized-black-pere-theme.el")
;; (enable-theme 'solarized-selenized-black-pere)
