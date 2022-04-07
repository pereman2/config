(setq org-directory "~/Dropbox/notes/org/")
(setq org-agenda-files '("~/Dropbox/notes/org/"))
(setq org-capture-templates
      '(("t" "todo" entry (file+headline "~/Dropbox/notes/org/todo.org" "Tasks")
         "* TODO [#A] %?")
        ("n" "today note" plain (file+datetree "~/Dropbox/notes/org/dailynotes.org")
         "%?\n")))

(defun todo ()
	(interactive)
	(find-file "~/Dropbox/notes/org/todo.org")
	)

(defun todolist ()
	(interactive)
	(org-todo-list)
	)
