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

(use-package init-loader
  :ensure t
  :init
  (setq init-loader-directory (concat user-emacs-directory "init-loader/")
        init-loader-show-log-after-init nil
        init-loader-byte-compile t
        byte-compile-warnings t
        custom-file (concat init-loader-directory "05-customize.el"))
  :config
  (let ((byte-compile-warnings '(not unresolved free-vars)))
    ;; Trick to speed up a little initial load
    (setq gc-cons-threshold (* 64 1024 1024))
    (init-loader-load)
    (setq gc-cons-threshold (* 10 1024 1024))))

