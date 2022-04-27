(setq org-directory "~/Dropbox/notes/org/")
(setq org-agenda-files '("~/Dropbox/notes/org/"))
(setq org-capture-templates
      '(("t" "todo" entry (file+headline "~/Dropbox/notes/org/todo.org" "Tasks")
         "* TODO %?")
        ("n" "today note" plain (file+datetree "~/Dropbox/notes/org/notes.org")
         "%?\n")))

(use-package org-superstar
	:config
	(setq org-superstar-special-todo-items t)
	; this removes leading bullets (small ones), i like it without lmao
	; (setq org-superstar-leading-bullet 0)
	(add-hook 'org-mode-hook (lambda ()
														 (org-superstar-mode 1))))

(defun todo ()
	(interactive)
	(find-file "~/Dropbox/notes/org/todo.org")
	)

(defun note ()
	(interactive)
	(find-file "~/Dropbox/notes/org/notes.org")
	)

(defun todolist ()
	(interactive)
	(org-todo-list)
	)

(setq org-todo-keywords
      '((sequence "TODO" "DONE" "WAITING" "DELEGATED" "REVIEW")
				(sequence "xd")))

(setq org-todo-keyword-faces
    (quote (("TODO" :foreground "coral" :weight bold)
            ("DONE" :foreground "forest green" :weight normal :strike-through "black")
            ("WAITING" :foreground "orchid" :weight bold)
            ("REVIEW" :foreground "sky blue" :weight bold)
            ("DELEGATED" :foreground "gray44" :weight bold))))
