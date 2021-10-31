((magit-diff
  ("--ignore-submodules=all" "--no-ext-diff" "--stat"))
 (magit-diff:--ignore-submodules)
 (magit-log
  ("--simplify-by-decoration"
   ("--" "doc/dev/cephadm/developing-cephadm.rst")
   "--graph" "--color")
  (("--" "doc/dev/cephadm/developing-cephadm.rst")
   "--graph" "--color"))
 (magit-status-jump nil))
