(require 'package)

    (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
    (add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

    (setq package-enable-at-startup nil)
    (package-initialize)

(global-set-key (kbd "M-x") 'helm-M-x)

(load-file "~/.emacs.d/init/init.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("03c32698863b38cb07bf7e6a54b6c1de81f752a6c4eab3642749007d5dcf0aef" "d14f3df28603e9517eb8fb7518b662d653b25b26e83bd8e129acea042b774298" "6bdcff29f32f85a2d99f48377d6bfa362768e86189656f63adbf715ac5c1340b" "4eb6fa2ee436e943b168a0cd8eab11afc0752aebb5d974bba2b2ddc8910fca8f" "83e0376b5df8d6a3fbdfffb9fb0e8cf41a11799d9471293a810deb7586c131e6" "6b5c518d1c250a8ce17463b7e435e9e20faa84f3f7defba8b579d4f5925f60c1" "7661b762556018a44a29477b84757994d8386d6edee909409fabe0631952dad9" "c1284dd4c650d6d74cfaf0106b8ae42270cab6c58f78efc5b7c825b6a4580417" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "3b8284e207ff93dfc5e5ada8b7b00a3305351a3fb222782d8033a400a48eca48" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" default))
 '(ggtags-navigation-mode t)
 '(helm-mode t)
 '(menu-bar-mode nil)
 '(package-selected-packages
   '(treemacs-evil treemacs-projectile treemacs lsp-treemacs dockerfile-mode typescript-mode hl-todo good-scroll x86-lookup creamsody-theme neotree todoist lsp-python-ms ts imenus flycheck use-package multi-term org-bullets org-pomodoro disaster typit pdb-mode magit zenburn-theme helm-gtags ggtags git helm evil))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "JetBrains Mono" :foundry "JB" :slant normal :weight normal :height 98 :width normal)))))
