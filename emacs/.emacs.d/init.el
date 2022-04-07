(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t
	     )
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-and-compile
  (setq use-package-always-ensure t
        use-package-expand-minimally t))


(load-file "~/.emacs.d/org.el")
(load-file "~/.emacs.d/globals.el")
(load-file "~/.emacs.d/cute-stuff.el")
(load-file "~/.emacs.d/eyebrowse.el")

(load-file "~/.emacs.d/vim.el") ;; do this last since evil-leader uses some commands from other files

(use-package magit
  :ensure t)

(use-package ivy
  :ensure t
  :init
  (ivy-mode 1))

(use-package projectile
  :ensure t
	)

(use-package vterm
  :ensure t
	)
