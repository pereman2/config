(use-package solarized-theme
	:ensure t
	)

(defun font-jetbrains()
	(interactive)
	(add-to-list 'default-frame-alist '(font . "JetBrains Mono-10"))
	(add-to-list 'default-frame-alist '(line-spacing . 0.2))
	)

(font-jetbrains)
(load-theme 'leuven)
