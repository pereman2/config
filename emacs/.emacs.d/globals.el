(setq-default tab-width 2)
(setq-default smartparens-mode 0)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(display-line-numbers-mode 1)
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)


(defun config-file ()
	(interactive)
	(find-file "~/.emacs.d/init.el")
	)

