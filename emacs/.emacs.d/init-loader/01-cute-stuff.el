(use-package solarized-theme
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
	(add-to-list 'default-frame-alist '(font . "JetBrains Mono-10"))
	(add-to-list 'default-frame-alist '(line-spacing . 0.2))
	)

(font-jetbrains)
(load-theme 'solarized-dark)
