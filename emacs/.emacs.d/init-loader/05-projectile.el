(use-package projectile
  :ensure t
  :demand
  :config
  (setq projectile-indexing-method 'alien)
  (setq projectile-sort-order 'recentf)
  (setq projectile-enable-caching nil)
  (projectile-mode))
