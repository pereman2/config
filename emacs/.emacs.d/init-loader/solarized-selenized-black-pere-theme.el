(deftheme solarized-selenized-black-pere
  "Created 2022-04-13.")

(custom-theme-set-variables
 'solarized-selenized-black-pere
 '(ansi-color-names-vector ["#252525" "#ed4a46" "#70b433" "#dbb32d" "#368aeb" "#eb6eb7" "#3fc5b7" "#181818"])
 '(compilation-message-face 'default)
 '(term-default-fg-color "#b9b9b9")
 '(term-default-bg-color "#181818"))

(custom-theme-set-faces
 'solarized-selenized-black-pere
 '(button ((t (:underline t))))
 '(cursor ((((class color) (min-colors 89)) (:foreground "#181818" :background "#b9b9b9" :inverse-video t))))
 '(error ((((class color) (min-colors 89)) (:foreground "#e67f43"))))
 '(escape-glyph ((((class color) (min-colors 89)) (:foreground "#a580e2"))))
 '(fringe ((((class color) (min-colors 89)) (:foreground "#777777" :background "#181818"))))
 '(header-line ((((class color) (min-colors 89)) (:inverse-video unspecified :overline nil :underline "#252525" :foreground "#b9b9b9" :background "#181818" :box (:line-width 2 :color "#181818" :style unspecified)))))
 '(highlight ((((class color) (min-colors 89)) (:background "#252525"))))
 '(lazy-highlight ((((class color) (min-colors 89)) (:foreground "#181818" :background "#dbb32d" :weight normal))))
 '(link ((((class color) (min-colors 89)) (:foreground "#dbb32d" :underline t :weight bold))))
 '(link-visited ((((class color) (min-colors 89)) (:foreground "#dbb32d" :underline t :weight normal))))
 '(match ((((class color) (min-colors 89)) (:background "#252525" :foreground "#dedede" :weight bold))))
 '(menu ((((class color) (min-colors 89)) (:foreground "#b9b9b9" :background "#181818"))))
 '(minibuffer-prompt ((((class color) (min-colors 89)) (:foreground "#b9b9b9"))))
 '(mode-line ((((class color) (min-colors 89)) (:inverse-video unspecified :overline "#252525" :underline "#284b54" :foreground "#b9b9b9" :background "#252525" :box (:line-width 1 :color "#252525" :style unspecified)))))
 '(mode-line-buffer-id ((((class color) (min-colors 89)) (:foreground "#dedede" :weight bold))))
 '(mode-line-inactive ((((class color) (min-colors 89)) (:inverse-video unspecified :overline "#252525" :underline "#284b54" :foreground "#777777" :background "#181818" :box (:line-width 1 :color "#181818" :style unspecified)))))
 '(region ((((class color) (min-colors 89)) (:extend t :foreground "#181818" :background "#dedede"))))
 '(secondary-selection ((((class color) (min-colors 89)) (:extend t :background "#252525"))))
 '(shadow ((((class color) (min-colors 89)) (:foreground "#777777"))))
 '(success ((((class color) (min-colors 89)) (:foreground "#70b433"))))
 '(trailing-whitespace ((((class color) (min-colors 89)) (:background "#ed4a46"))))
 '(vertical-border ((((class color) (min-colors 89)) (:foreground "#284b54"))))
 '(warning ((((class color) (min-colors 89)) (:foreground "#dbb32d"))))
 '(next-error ((((class color) (min-colors 89)) (:foreground "#dd99bd" :background "#5b3148" :weight normal))))
 '(compilation-column-number ((((class color) (min-colors 89)) (:inherit font-lock-doc-face :foreground "#3fc5b7" :underline nil))))
 '(compilation-error ((((class color) (min-colors 89)) (:inherit error :underline nil))))
 '(compilation-info ((((class color) (min-colors 89)) (:foreground "#777777" :underline nil :bold nil))))
 '(compilation-line-number ((((class color) (min-colors 89)) (:foreground "#70b433" :underline nil))))
 '(compilation-warning ((((class color) (min-colors 89)) (:inherit warning :underline nil))))
 '(compilation-mode-line-exit ((((class color) (min-colors 89)) (:foreground unspecified :weight bold))))
 '(compilation-mode-line-fail ((((class color) (min-colors 89)) (:inherit compilation-error :foreground "#ed4a46" :weight bold))))
 '(compilation-mode-line-run ((((class color) (min-colors 89)) (:foreground "#e67f43" :weight bold))))
 '(completions-annotations ((t (:foreground "#777777"))))
 '(completions-common-part ((t (:foreground "#368aeb"))))
 '(diary ((((class color) (min-colors 89)) (:foreground "#dbb32d"))))
 '(dired-directory ((((class color) (min-colors 89)) (:foreground "#368aeb" :weight normal))))
 '(dired-flagged ((((class color) (min-colors 89)) (:foreground "#ed4a46"))))
 '(dired-header ((((class color) (min-colors 89)) (:foreground "#181818" :background "#368aeb"))))
 '(dired-ignored ((((class color) (min-colors 89)) (:inherit shadow))))
 '(dired-mark ((((class color) (min-colors 89)) (:foreground "#dbb32d" :weight bold))))
 '(dired-marked ((((class color) (min-colors 89)) (:foreground "#eb6eb7" :weight bold))))
 '(dired-perm-write ((((class color) (min-colors 89)) (:foreground "#b9b9b9" :underline t))))
 '(dired-symlink ((((class color) (min-colors 89)) (:foreground "#3fc5b7" :weight normal :slant italic))))
 '(dired-warning ((((class color) (min-colors 89)) (:foreground "#e67f43" :underline t))))
 '(fill-column-indicator ((((class color) (min-colors 89)) :foreground "#252525" :weight semilight)))
 '(isearch ((((class color) (min-colors 89)) (:foreground "#181818" :background "#eb6eb7" :weight normal))))
 '(isearch-fail ((((class color) (min-colors 89)) (:foreground "#ed4a46" :background "#181818" :bold t))))
 '(widget-field ((((class color) (min-colors 89)) (:background "#252525"))))
 '(font-lock-builtin-face ((((class color) (min-colors 89)) (:foreground "#b9b9b9" :weight bold :slant normal))))
 '(font-lock-comment-delimiter-face ((((class color) (min-colors 89)) (:foreground "#777777" :slant normal))))
 '(font-lock-comment-face ((((class color) (min-colors 89)) (:foreground "#777777"))))
 '(font-lock-constant-face ((((class color) (min-colors 89)) (:foreground "#368aeb" :weight bold))))
 '(font-lock-doc-face ((((class color) (min-colors 89)) (:foreground "#3fc5b7" :slant normal))))
 '(font-lock-function-name-face ((((class color) (min-colors 89)) (:foreground "#368aeb"))))
 '(font-lock-keyword-face ((((class color) (min-colors 89)) (:foreground "#70b433" :weight bold))))
 '(font-lock-negation-char-face ((((class color) (min-colors 89)) (:foreground "#dbb32d" :weight bold))))
 '(font-lock-preprocessor-face ((((class color) (min-colors 89)) (:foreground "#368aeb"))))
 '(font-lock-regexp-grouping-construct ((((class color) (min-colors 89)) (:foreground "#dbb32d" :weight bold))))
 '(font-lock-regexp-grouping-backslash ((((class color) (min-colors 89)) (:foreground "#70b433" :weight bold))))
 '(font-lock-string-face ((((class color) (min-colors 89)) (:foreground "#3fc5b7"))))
 '(font-lock-type-face ((((class color) (min-colors 89)) (:foreground "#dbb32d"))))
 '(font-lock-variable-name-face ((((class color) (min-colors 89)) (:foreground "#368aeb"))))
 '(font-lock-warning-face ((((class color) (min-colors 89)) (:inherit error :weight bold))))
 '(c-annotation-face ((((class color) (min-colors 89)) (:inherit font-lock-constant-face))))
 '(company-echo ((((class color) (min-colors 89)) nil)))
 '(company-echo-common ((((class color) (min-colors 89)) (:background "#ed4a46"))))
 '(company-preview ((((class color) (min-colors 89)) (:background "#252525" :foreground "#dedede"))))
 '(company-preview-common ((((class color) (min-colors 89)) (:foreground "#dedede"))))
 '(company-preview-search ((((class color) (min-colors 89)) (:foreground "#eb6eb7"))))
 '(company-tooltip-scrollbar-track ((((class color) (min-colors 89)) (:background "#252525" :foreground "#3fc5b7"))))
 '(company-tooltip-scrollbar-thumb ((((class color) (min-colors 89)) (:foreground "#181818" :background "#b9b9b9"))))
 '(company-template-field ((((class color) (min-colors 89)) (:background "#dbb32d" :foreground "#252525"))))
 '(company-tooltip ((((class color) (min-colors 89)) (:foreground "#dedede" :background "#252525"))))
 '(company-tooltip-annotation ((((class color) (min-colors 89)) (:foreground "#3fc5b7"))))
 '(company-tooltip-annotation-selection ((((class color) (min-colors 89)) (:foreground "#3fc5b7"))))
 '(company-tooltip-common ((((class color) (min-colors 89)) (:foreground "#b9b9b9"))))
 '(company-tooltip-common-selection ((((class color) (min-colors 89)) (:weight bold))))
 '(company-tooltip-mouse ((((class color) (min-colors 89)) (:background "#254d48" :foreground "#89c6bd"))))
 '(company-tooltip-search ((((class color) (min-colors 89)) (:foreground "#eb6eb7"))))
 '(company-tooltip-search-selection ((((class color) (min-colors 89)) (:foreground "#eb6eb7" :weight bold))))
 '(company-tooltip-selection ((((class color) (min-colors 89)) (:weight bold))))
 '(cscope-file-face ((((class color) (min-colors 89)) (:foreground "#70b433" :weight bold))))
 '(cscope-function-face ((((class color) (min-colors 89)) (:foreground "#368aeb"))))
 '(cscope-line-number-face ((((class color) (min-colors 89)) (:foreground "#dbb32d"))))
 '(cscope-mouse-face ((((class color) (min-colors 89)) (:background "#368aeb" :foreground "#b9b9b9"))))
 '(custom-face-tag ((((class color) (min-colors 89)) (:inherit variable-pitch :height 1.2 :foreground "#a580e2" :weight normal))))
 '(custom-variable-tag ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#3fc5b7" :height 1.2))))
 '(custom-comment-tag ((((class color) (min-colors 89)) (:foreground "#777777"))))
 '(custom-group-tag ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#368aeb" :height 1.2))))
 '(custom-group-tag-1 ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#ed4a46" :height 1.2))))
 '(custom-state ((((class color) (min-colors 89)) (:foreground "#70b433"))))
 '(custom-button ((((class color) (min-colors 89)) (:background "#252525" :foreground "#dedede" :box (:line-width 2 :style released-button)))))
 '(custom-button-mouse ((((class color) (min-colors 89)) (:background "#777777" :foreground "#252525" :box (:line-width 2 :style released-button)))))
 '(custom-button-pressed ((((class color) (min-colors 89)) (:background "#777777" :foreground "#dedede" :box (:line-width 2 :style pressed-button)))))
 '(custom-button-unraised ((((class color) (min-colors 89)) (:inherit underline))))
 '(custom-button-pressed-unraised ((((class color) (min-colors 89)) (:inherit custom-button-unraised :foreground "#eb6eb7"))))
 '(diff-added ((((class color) (min-colors 89)) (:background "#232a1c" :foreground "#92be67"))))
 '(diff-changed ((t nil)))
 '(diff-removed ((((class color) (min-colors 89)) (:background "#331f1d" :foreground "#ee7a6e"))))
 '(diff-refine-added ((((class color) (min-colors 89)) (:background "#32471d" :foreground "#9bbc78"))))
 '(diff-refine-changed ((((class color) (min-colors 89)) (:background "#25395a" :foreground "#8aa4db"))))
 '(diff-refine-removed ((((class color) (min-colors 89)) (:background "#5d2621" :foreground "#e5887d"))))
 '(diff-header ((t (:background "#252525"))))
 '(diff-file-header ((((class color) (min-colors 89)) (:background "#181818" :foreground "#b9b9b9" :weight bold))))
 '(diff-context ((((class color) (min-colors 89)) :foreground "#b9b9b9")))
 '(diff-indicator-added ((t (:foreground "#70b433"))))
 '(diff-indicator-changed ((t (:foreground "#368aeb"))))
 '(diff-indicator-removed ((t (:foreground "#ed4a46"))))
 '(diff-hl-change ((((class color) (min-colors 89)) (:background "#202530" :foreground "#7a9fe5"))))
 '(diff-hl-delete ((((class color) (min-colors 89)) (:background "#331f1d" :foreground "#ee7a6e"))))
 '(diff-hl-insert ((((class color) (min-colors 89)) (:background "#232a1c" :foreground "#92be67"))))
 '(diff-hl-reverted-hunk-highlight ((((class color) (min-colors 89)) (:background "#302a1c" :foreground "#debd66"))))
 '(smerge-base ((((class color) (min-colors 89)) (:background "#302a1c" :foreground "#debd66"))))
 '(smerge-lower ((((class color) (min-colors 89)) (:background "#232a1c" :foreground "#92be67"))))
 '(smerge-markers ((t (:background "#252525"))))
 '(smerge-refined-added ((((class color) (min-colors 89)) (:background "#32471d" :foreground "#9bbc78"))))
 '(smerge-refined-removed ((((class color) (min-colors 89)) (:background "#5d2621" :foreground "#e5887d"))))
 '(smerge-upper ((((class color) (min-colors 89)) (:background "#331f1d" :foreground "#ee7a6e"))))
 '(epa-mark ((((class color) (min-colors 89)) (:foreground "#eb6eb7" :weight bold))))
 '(epa-string ((((class color) (min-colors 89)) (:foreground "#a580e2"))))
 '(epa-validity-disabled ((((class color) (min-colors 89)) (:inverse-video t :slant italic))))
 '(epa-validity-high ((((class color) (min-colors 89)) (:weight bold))))
 '(epa-validity-low ((((class color) (min-colors 89)) (:slant italic))))
 '(epa-validity-medium ((((class color) (min-colors 89)) (:slant italic))))
 '(flycheck-error ((((supports :underline (:style wave)) (class color) (min-colors 89)) (:underline (:style wave :color "#ed4a46") :inherit unspecified)) (((class color) (min-colors 89)) (:foreground "#f15a4b" :background "#ad1117" :weight bold :underline t))))
 '(flycheck-warning ((((supports :underline (:style wave)) (class color) (min-colors 89)) (:underline (:style wave :color "#dbb32d") :inherit unspecified)) (((class color) (min-colors 89)) (:foreground "#e5bb45" :background "#a68000" :weight bold :underline t))))
 '(flycheck-info ((((supports :underline (:style wave)) (class color) (min-colors 89)) (:underline (:style wave :color "#368aeb") :inherit unspecified)) (((class color) (min-colors 89)) (:foreground "#518eee" :background "#0057af" :weight bold :underline t))))
 '(flycheck-fringe-error ((((class color) (min-colors 89)) (:foreground "#f15a4b" :background "#ad1117" :weight bold))))
 '(flycheck-fringe-warning ((((class color) (min-colors 89)) (:foreground "#e5bb45" :background "#a68000" :weight bold))))
 '(flycheck-fringe-info ((((class color) (min-colors 89)) (:foreground "#518eee" :background "#0057af" :weight bold))))
 '(flyspell-duplicate ((((supports :underline (:style wave)) (class color) (min-colors 89)) (:underline (:style wave :color "#dbb32d") :inherit unspecified)) (((class color) (min-colors 89)) (:foreground "#dbb32d" :weight bold :underline t))))
 '(flyspell-incorrect ((((supports :underline (:style wave)) (class color) (min-colors 89)) (:underline (:style wave :color "#ed4a46") :inherit unspecified)) (((class color) (min-colors 89)) (:foreground "#ed4a46" :weight bold :underline t))))
 '(git-commit-comment-action ((((class color) (min-colors 89)) (:foreground "#b9b9b9" :weight bold))))
 '(git-commit-comment-branch-local ((((class color) (min-colors 89)) (:foreground "#368aeb" :weight bold))))
 '(git-commit-comment-branch-remote ((((class color) (min-colors 89)) (:foreground "#70b433" :weight bold))))
 '(git-commit-comment-heading ((((class color) (min-colors 89)) (:foreground "#dbb32d" :weight bold))))
 '(gnus-group-mail-1 ((((class color) (min-colors 89)) (:weight bold :inherit gnus-group-mail-1-empty))))
 '(gnus-group-mail-1-empty ((((class color) (min-colors 89)) (:inherit gnus-group-news-1-empty))))
 '(gnus-group-mail-2 ((((class color) (min-colors 89)) (:weight bold :inherit gnus-group-mail-2-empty))))
 '(gnus-group-mail-2-empty ((((class color) (min-colors 89)) (:inherit gnus-group-news-2-empty))))
 '(gnus-group-mail-3 ((((class color) (min-colors 89)) (:weight bold :inherit gnus-group-mail-3-empty))))
 '(gnus-group-mail-3-empty ((((class color) (min-colors 89)) (:inherit gnus-group-news-3-empty))))
 '(gnus-group-mail-low ((((class color) (min-colors 89)) (:weight bold :inherit gnus-group-mail-low-empty))))
 '(gnus-group-mail-low-empty ((((class color) (min-colors 89)) (:inherit gnus-group-news-low-empty))))
 '(gnus-group-news-1 ((((class color) (min-colors 89)) (:weight bold :inherit gnus-group-news-1-empty))))
 '(gnus-group-news-2 ((((class color) (min-colors 89)) (:weight bold :inherit gnus-group-news-2-empty))))
 '(gnus-group-news-3 ((((class color) (min-colors 89)) (:weight bold :inherit gnus-group-news-3-empty))))
 '(gnus-group-news-4 ((((class color) (min-colors 89)) (:weight bold :inherit gnus-group-news-4-empty))))
 '(gnus-group-news-5 ((((class color) (min-colors 89)) (:weight bold :inherit gnus-group-news-5-empty))))
 '(gnus-group-news-6 ((((class color) (min-colors 89)) (:weight bold :inherit gnus-group-news-6-empty))))
 '(gnus-group-news-low ((((class color) (min-colors 89)) (:weight bold :inherit gnus-group-news-low-empty))))
 '(gnus-summary-cancelled ((((class color) (min-colors 89)) (:foreground "#e67f43"))))
 '(gnus-summary-high-ancient ((((class color) (min-colors 89)) (:foreground "#368aeb" :weight bold))))
 '(gnus-summary-high-read ((((class color) (min-colors 89)) (:foreground "#70b433" :weight bold))))
 '(gnus-summary-high-ticked ((((class color) (min-colors 89)) (:foreground "#e67f43" :weight bold))))
 '(gnus-summary-high-unread ((((class color) (min-colors 89)) (:foreground "#b9b9b9" :weight bold))))
 '(gnus-summary-low-ancient ((((class color) (min-colors 89)) (:foreground "#368aeb"))))
 '(gnus-summary-low-read ((t (:foreground "#70b433"))))
 '(gnus-summary-low-ticked ((((class color) (min-colors 89)) (:foreground "#e67f43"))))
 '(gnus-summary-low-unread ((((class color) (min-colors 89)) (:foreground "#b9b9b9"))))
 '(gnus-summary-normal-ancient ((((class color) (min-colors 89)) (:foreground "#368aeb"))))
 '(gnus-summary-normal-read ((((class color) (min-colors 89)) (:foreground "#70b433"))))
 '(gnus-summary-normal-ticked ((((class color) (min-colors 89)) (:foreground "#e67f43"))))
 '(gnus-summary-normal-unread ((((class color) (min-colors 89)) (:foreground "#b9b9b9"))))
 '(gnus-summary-selected ((((class color) (min-colors 89)) (:foreground "#dbb32d" :weight bold))))
 '(gnus-group-news-1-empty ((((class color) (min-colors 89)) (:foreground "#dbb32d"))))
 '(gnus-group-news-2-empty ((((class color) (min-colors 89)) (:foreground "#70b433"))))
 '(gnus-group-news-3-empty ((((class color) (min-colors 89)) (:foreground "#70b433"))))
 '(gnus-group-news-4-empty ((((class color) (min-colors 89)) (:foreground "#368aeb"))))
 '(gnus-group-news-5-empty ((((class color) (min-colors 89)) (:foreground "#368aeb"))))
 '(gnus-group-news-6-empty ((((class color) (min-colors 89)) (:foreground "#0057af"))))
 '(gnus-group-news-low-empty ((((class color) (min-colors 89)) (:foreground "#777777"))))
 '(info-title-1 ((((class color) (min-colors 89)) (:foreground "#dedede" :weight bold))))
 '(info-title-2 ((((class color) (min-colors 89)) (:foreground "#dedede" :weight bold))))
 '(info-title-3 ((((class color) (min-colors 89)) (:weight bold))))
 '(info-title-4 ((((class color) (min-colors 89)) (:weight bold))))
 '(info-node ((((class color) (min-colors 89)) (:foreground "#dedede" :slant italic :weight bold))))
 '(info-header-node ((((class color) (min-colors 89)) (:inherit info-node))))
 '(info-header-xref ((((class color) (min-colors 89)) (:inherit info-xref))))
 '(info-index-match ((((class color) (min-colors 89)) (:inherit match))))
 '(info-menu-header ((((class color) (min-colors 89)) (:inherit variable-pitch :weight bold))))
 '(info-menu-star ((((class color) (min-colors 89)) (:foreground "#e67f43"))))
 '(info-xref ((((class color) (min-colors 89)) (:inherit link))))
 '(info-xref-visited ((((class color) (min-colors 89)) (:inherit (link-visited info-xref)))))
 '(ivy-confirm-face ((((class color) (min-colors 89)) (:foreground "#70b433"))))
 '(ivy-current-match ((((class color) (min-colors 89)) (:weight bold :background "#252525" :underline t))))
 '(ivy-match-required-face ((((class color) (min-colors 89)) (:foreground "#ed4a46"))))
 '(ivy-minibuffer-match-face-1 ((((class color) (min-colors 89)) (:foreground "#dedede"))))
 '(ivy-minibuffer-match-face-2 ((((class color) (min-colors 89)) (:foreground "#dbb32d"))))
 '(ivy-minibuffer-match-face-3 ((((class color) (min-colors 89)) (:foreground "#dbb32d"))))
 '(ivy-minibuffer-match-face-4 ((((class color) (min-colors 89)) (:foreground "#dbb32d"))))
 '(ivy-remote ((((class color) (min-colors 89)) (:foreground "#368aeb"))))
 '(line-number ((((class color) (min-colors 89)) (:weight thin :underline nil :foreground "#777777" :background "#181818"))))
 '(line-number-minor-tick ((((class color) (min-colors 89)) (:inherit line-number :weight normal))))
 '(line-number-major-tick ((((class color) (min-colors 89)) (:inherit line-number-minor-tick :weight bold))))
 '(line-number-current-line ((((class color) (min-colors 89)) (:inherit line-number :background "#181818" :foreground "#b9b9b9"))))
 '(magit-section-highlight ((t (:extend t :background "#252525"))))
 '(magit-section-heading ((t (:foreground "#dbb32d" :weight bold))))
 '(magit-section-heading-selection ((t (:foreground "#e67f43" :weight bold))))
 '(magit-diff-file-heading ((t (:weight bold))))
 '(magit-diff-file-heading-highlight ((t (:extend t :background "#252525"))))
 '(magit-diff-file-heading-selection ((t (:extend t :background "#252525" :foreground "#e67f43"))))
 '(magit-diff-hunk-heading ((t (:extend t :background "#302a1c" :foreground "#debd66"))))
 '(magit-diff-hunk-heading-highlight ((t (:extend t :background "#56471d" :foreground "#d7bb78"))))
 '(magit-diff-hunk-heading-selection ((t (:extend t :background "#3637317b27f8" :foreground "#e67f43" :weight bold))))
 '(magit-diff-lines-heading ((t (:extend t :background "#e67f43" :foreground "#3a4d53"))))
 '(magit-diff-context-highlight ((t (:extend t :background "#252525" :foreground "#dedede"))))
 '(magit-diff-added ((((class color) (min-colors 89)) (:extend t :background "#232a1c" :foreground "#92be67"))))
 '(magit-diff-added-highlight ((((class color) (min-colors 89)) (:extend t :background "#232a1c" :foreground "#92be67"))))
 '(magit-diff-base ((((class color) (min-colors 89)) (:extend t :background "#302a1c" :foreground "#debd66"))))
 '(magit-diff-base-highlight ((((class color) (min-colors 89)) (:extend t :background "#302a1c" :foreground "#debd66"))))
 '(magit-diff-conflict-heading ((((class color) (min-colors 89)) (:inherit magit-diff-hunk-heading))))
 '(magit-diff-context ((((class color) (min-colors 89)) (:foreground "#b9b9b9"))))
 '(magit-diff-removed ((((class color) (min-colors 89)) (:extend t :background "#331f1d" :foreground "#ee7a6e"))))
 '(magit-diff-removed-highlight ((((class color) (min-colors 89)) (:extend t :background "#331f1d" :foreground "#ee7a6e"))))
 '(magit-diffstat-added ((t (:foreground "#70b433"))))
 '(magit-diffstat-removed ((t (:foreground "#ed4a46"))))
 '(magit-process-ok ((t (:foreground "#70b433" :weight bold))))
 '(magit-process-ng ((t (:foreground "#ed4a46" :weight bold))))
 '(magit-log-author ((t (:foreground "#777777" :weight bold))))
 '(magit-log-date ((t (:foreground "#777777"))))
 '(magit-log-graph ((t (:foreground "#dedede"))))
 '(magit-sequence-pick ((t (:foreground "#a68000"))))
 '(magit-sequence-stop ((t (:foreground "#70b433"))))
 '(magit-sequence-part ((t (:foreground "#dbb32d"))))
 '(magit-sequence-head ((t (:foreground "#368aeb"))))
 '(magit-sequence-drop ((t (:foreground "#ed4a46"))))
 '(magit-sequence-done ((t (:foreground "#777777"))))
 '(magit-sequence-onto ((t (:foreground "#777777"))))
 '(magit-bisect-good ((t (:foreground "#70b433"))))
 '(magit-bisect-skip ((t (:foreground "#dbb32d"))))
 '(magit-bisect-bad ((t (:foreground "#ed4a46"))))
 '(magit-blame-highlight ((t (:extend t :background "#252525"))))
 '(magit-blame-heading ((t (:extend t :background "#252525" :box (:color "#252525" :line-width 2)))))
 '(magit-blame-summary ((t (:foreground "#b9b9b9"))))
 '(magit-blame-hash ((t (:foreground "#a580e2"))))
 '(magit-blame-name ((t (:foreground "#a580e2"))))
 '(magit-blame-date ((t (:foreground "#a580e2"))))
 '(magit-dimmed ((t (:foreground "#777777"))))
 '(magit-hash ((t (:foreground "#777777"))))
 '(magit-tag ((t (:foreground "#3fc5b7" :weight bold))))
 '(magit-branch-remote ((t (:foreground "#70b433" :weight bold))))
 '(magit-branch-local ((t (:foreground "#368aeb" :weight bold))))
 '(magit-head ((t (:foreground "#368aeb" :weight bold))))
 '(magit-refname ((t (:background "#252525" :foreground "#777777" :weight bold))))
 '(magit-refname-stash ((t (:background "#252525" :foreground "#777777" :weight bold))))
 '(magit-refname-wip ((t (:background "#252525" :foreground "#777777" :weight bold))))
 '(magit-signature-good ((t (:foreground "#70b433"))))
 '(magit-signature-bad ((t (:foreground "#ed4a46"))))
 '(magit-signature-untrusted ((t (:foreground "#dbb32d"))))
 '(magit-cherry-unmatched ((t (:foreground "#3fc5b7"))))
 '(magit-cherry-equivalent ((t (:foreground "#eb6eb7"))))
 '(magit-reflog-commit ((t (:foreground "#70b433"))))
 '(magit-reflog-amend ((t (:foreground "#eb6eb7"))))
 '(magit-reflog-merge ((t (:foreground "#70b433"))))
 '(magit-reflog-checkout ((t (:foreground "#368aeb"))))
 '(magit-reflog-reset ((t (:foreground "#ed4a46"))))
 '(magit-reflog-rebase ((t (:foreground "#eb6eb7"))))
 '(magit-reflog-cherry-pick ((t (:foreground "#70b433"))))
 '(magit-reflog-remote ((t (:foreground "#3fc5b7"))))
 '(magit-reflog-other ((t (:foreground "#3fc5b7"))))
 '(markdown-blockquote-face ((((class color) (min-colors 89)) (:inherit font-lock-doc-face))))
 '(markdown-bold-face ((((class color) (min-colors 89)) (:inherit bold))))
 '(markdown-code-face ((((class color) (min-colors 89)) (:inherit fixed-pitch :foreground "#777777" :background unspecified))))
 '(markdown-comment-face ((((class color) (min-colors 89)) (:foreground "#777777" :strike-through t))))
 '(markdown-header-delimiter-face ((((class color) (min-colors 89)) (:foreground "#777777"))))
 '(markdown-header-face ((((class color) (min-colors 89)) (:foreground "#368aeb"))))
 '(markdown-header-face-1 ((((class color) (min-colors 89)) (:inherit markdown-header-face))))
 '(markdown-header-face-2 ((((class color) (min-colors 89)) (:inherit markdown-header-face))))
 '(markdown-header-face-3 ((((class color) (min-colors 89)) (:inherit markdown-header-face))))
 '(markdown-header-face-4 ((((class color) (min-colors 89)) (:inherit markdown-header-face))))
 '(markdown-header-face-5 ((((class color) (min-colors 89)) (:inherit markdown-header-face))))
 '(markdown-header-face-6 ((((class color) (min-colors 89)) (:inherit markdown-header-face))))
 '(markdown-header-rule-face ((((class color) (min-colors 89)) (:foreground "#777777"))))
 '(markdown-inline-code-face ((((class color) (min-colors 89)) (:foreground "#777777"))))
 '(markdown-italic-face ((((class color) (min-colors 89)) (:inherit italic))))
 '(markdown-language-keyword-face ((((class color) (min-colors 89)) (:inherit default))))
 '(markdown-line-break-face ((((class color) (min-colors 89)) (:inherit default :underline t))))
 '(markdown-link-face ((((class color) (min-colors 89)) (:inherit default :foreground "#dbb32d"))))
 '(markdown-link-title-face ((((class color) (min-colors 89)) (:inherit font-lock-comment-face))))
 '(markdown-list-face ((((class color) (min-colors 89)) (:inherit font-lock-builtin-face))))
 '(markdown-math-face ((((class color) (min-colors 89)) (:inherit font-lock-string-face))))
 '(markdown-metadata-key-face ((((class color) (min-colors 89)) (:inherit font-lock-comment-face))))
 '(markdown-metadata-value-face ((((class color) (min-colors 89)) (:inherit default))))
 '(markdown-missing-link-face ((((class color) (min-colors 89)) (:inherit font-lock-warning-face))))
 '(markdown-pre-face ((((class color) (min-colors 89)) (:foreground "#777777"))))
 '(markdown-reference-face ((((class color) (min-colors 89)) (:inherit default :foreground "#777777"))))
 '(markdown-url-face ((((class color) (min-colors 89)) (:foreground "#777777"))))
 '(message-cited-text-1 ((((class color) (min-colors 89)) (:foreground "#777777"))))
 '(message-header-name ((((class color) (min-colors 89)) (:foreground "#777777"))))
 '(message-header-other ((((class color) (min-colors 89)) (:foreground "#b9b9b9" :weight normal))))
 '(message-header-to ((((class color) (min-colors 89)) (:foreground "#b9b9b9" :weight normal))))
 '(message-header-cc ((((class color) (min-colors 89)) (:foreground "#b9b9b9" :weight normal))))
 '(message-header-newsgroups ((((class color) (min-colors 89)) (:foreground "#dbb32d" :weight bold))))
 '(message-header-subject ((((class color) (min-colors 89)) (:foreground "#3fc5b7" :weight normal))))
 '(message-header-xheader ((((class color) (min-colors 89)) (:foreground "#3fc5b7"))))
 '(message-mml ((((class color) (min-colors 89)) (:foreground "#dbb32d" :weight bold))))
 '(message-separator ((((class color) (min-colors 89)) (:foreground "#777777" :slant italic))))
 '(org-agenda-structure ((((class color) (min-colors 89)) (:foreground "#dedede" :background "#252525" :weight bold :slant normal :inverse-video nil :height 1.1 :underline nil :box (:line-width 2 :color "#181818")))))
 '(org-agenda-calendar-event ((((class color) (min-colors 89)) (:foreground "#dedede"))))
 '(org-agenda-calendar-sexp ((((class color) (min-colors 89)) (:foreground "#b9b9b9" :slant italic))))
 '(org-agenda-date ((((class color) (min-colors 89)) (:foreground "#777777" :background "#181818" :weight normal :box (:line-width 2 :color "#181818") :inverse-video nil :overline nil :slant normal :height 1.0))))
 '(org-agenda-date-weekend ((((class color) (min-colors 89)) (:inherit org-agenda-date :inverse-video nil :background unspecified :foreground "#777777" :weight unspecified :underline t :overline nil :box unspecified))))
 '(org-agenda-date-today ((((class color) (min-colors 89)) (:inherit org-agenda-date :inverse-video t :weight bold :underline unspecified :overline nil :box unspecified :foreground "#368aeb" :background "#181818"))))
 '(org-agenda-done ((t (:foreground "burlywood" :slant italic))))
 '(org-archived ((((class color) (min-colors 89)) (:foreground "#777777" :weight normal))))
 '(org-block ((((class color) (min-colors 89)) nil)))
 '(org-block-begin-line ((((class color) (min-colors 89)) (:inherit org-meta-line :underline t))))
 '(org-block-end-line ((((class color) (min-colors 89)) (:inherit org-meta-line :overline t))))
 '(org-checkbox ((((class color) (min-colors 89)) (:background "#181818" :foreground "#b9b9b9" :box (:line-width 1 :style released-button)))))
 '(org-code ((((class color) (min-colors 89)) (:foreground "#777777"))))
 '(org-date ((((class color) (min-colors 89)) (:foreground "#368aeb" :underline t))))
 '(org-done ((t (:foreground "#70b433" :underline (:color foreground-color :style wave) :weight bold))))
 '(org-ellipsis ((((class color) (min-colors 89)) (:foreground "#777777"))))
 '(org-formula ((((class color) (min-colors 89)) (:foreground "#dbb32d"))))
 '(org-headline-done ((t (:foreground "salmon" :strike-through t))))
 '(org-hide ((((class color) (min-colors 89)) (:foreground "#181818"))))
 '(org-level-1 ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#e67f43" :height 1.3))))
 '(org-level-2 ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#70b433" :height 1.2))))
 '(org-level-3 ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#368aeb" :height 1.15))))
 '(org-level-4 ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#dbb32d" :height 1.1))))
 '(org-level-5 ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#3fc5b7"))))
 '(org-level-6 ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#70b433"))))
 '(org-level-7 ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#ed4a46"))))
 '(org-level-8 ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#368aeb"))))
 '(org-link ((((class color) (min-colors 89)) (:inherit link))))
 '(org-meta-line ((((class color) (min-colors 89)) (:foreground "#777777" :slant italic))))
 '(org-macro ((((class color) (min-colors 89)) (:foreground "#dedede"))))
 '(org-sexp-date ((((class color) (min-colors 89)) (:foreground "#a580e2"))))
 '(org-scheduled ((((class color) (min-colors 89)) (:foreground "#70b433"))))
 '(org-scheduled-previously ((((class color) (min-colors 89)) (:foreground "#3fc5b7"))))
 '(org-scheduled-today ((((class color) (min-colors 89)) (:foreground "#368aeb" :weight normal))))
 '(org-special-keyword ((((class color) (min-colors 89)) (:foreground "#777777" :weight bold))))
 '(org-table ((((class color) (min-colors 89)) (:foreground "#70b433"))))
 '(org-tag ((((class color) (min-colors 89)) (:weight bold))))
 '(org-time-grid ((((class color) (min-colors 89)) (:foreground "#777777"))))
 '(org-todo ((((class color) (min-colors 89)) (:foreground "#3fc5b7" :weight bold))))
 '(org-upcoming-deadline ((((class color) (min-colors 89)) (:foreground "#dbb32d" :weight normal :underline nil))))
 '(org-warning ((((class color) (min-colors 89)) (:foreground "#e67f43" :weight normal :underline nil))))
 '(org-agenda-dimmed-todo-face ((((class color) (min-colors 89)) (:foreground "#777777"))))
 '(org-agenda-restriction-lock ((((class color) (min-colors 89)) (:background "#dbb32d"))))
 '(org-clock-overlay ((((class color) (min-colors 89)) (:background "#252525"))))
 '(org-column ((((class color) (min-colors 89)) (:background "#252525" :strike-through nil :underline nil :slant normal :weight normal :inherit default))))
 '(org-column-title ((((class color) (min-colors 89)) (:background "#252525" :underline t :weight bold))))
 '(org-date-selected ((((class color) (min-colors 89)) (:foreground "#ed4a46" :inverse-video t))))
 '(org-document-info ((((class color) (min-colors 89)) (:foreground "#b9b9b9"))))
 '(org-document-title ((((class color) (min-colors 89)) (:foreground "#dedede" :weight bold :height 1.3))))
 '(org-drawer ((((class color) (min-colors 89)) (:foreground "#3fc5b7"))))
 '(org-footnote ((((class color) (min-colors 89)) (:foreground "#eb6eb7" :underline t))))
 '(org-mode-line-clock-overrun ((((class color) (min-colors 89)) (:inherit mode-line :background "#ed4a46"))))
 '(outline-1 ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#e67f43" :height 1.3))))
 '(outline-2 ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#70b433" :height 1.2))))
 '(outline-3 ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#368aeb" :height 1.15))))
 '(outline-4 ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#dbb32d" :height 1.1))))
 '(outline-5 ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#3fc5b7"))))
 '(outline-6 ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#70b433"))))
 '(outline-7 ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#ed4a46"))))
 '(outline-8 ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#368aeb"))))
 '(powerline-active1 ((((class color) (min-colors 89)) (:background "#181818" :foreground "#181818"))))
 '(powerline-active2 ((((class color) (min-colors 89)) (:background "#252525" :foreground "#181818"))))
 '(powerline-inactive1 ((((class color) (min-colors 89)) (:background "#252525" :foreground "#777777"))))
 '(powerline-inactive2 ((((class color) (min-colors 89)) (:background "#181818" :foreground "#777777"))))
 '(sh-quoted-exec ((((class color) (min-colors 89)) (:foreground "#a580e2" :weight bold))))
 '(sh-escaped-newline ((((class color) (min-colors 89)) (:foreground "#dbb32d" :weight bold))))
 '(sh-heredoc ((((class color) (min-colors 89)) (:foreground "#dbb32d" :weight bold))))
 '(show-paren-match ((((class color) (min-colors 89)) (:foreground "#eb6eb7" :background unspecified :weight bold))))
 '(show-paren-mismatch ((((class color) (min-colors 89)) (:foreground "#252525" :background "#ed4a46" :weight bold))))
 '(tab-bar ((t (:background "#181818" :foreground "#b9b9b9"))))
 '(tab-bar-tab ((t (:background "#181818" :foreground "#dedede"))))
 '(tab-bar-tab-inactive ((t (:background "#252525" :foreground "#777777"))))
 '(term ((t (:background "#181818" :foreground "#b9b9b9"))))
 '(term-color-black ((t (:foreground "#252525" :background "#252525"))))
 '(term-color-red ((t (:foreground "#ed4a46" :background "#ed4a46"))))
 '(term-color-green ((t (:foreground "#70b433" :background "#70b433"))))
 '(term-color-yellow ((t (:foreground "#dbb32d" :background "#dbb32d"))))
 '(term-color-blue ((t (:foreground "#368aeb" :background "#368aeb"))))
 '(term-color-magenta ((t (:foreground "#eb6eb7" :background "#eb6eb7"))))
 '(term-color-cyan ((t (:foreground "#3fc5b7" :background "#3fc5b7"))))
 '(term-color-white ((t (:foreground "#53676d" :background "#53676d"))))
 '(tooltip ((((class color) (min-colors 89)) (:background "#302a1c" :foreground "#debd66" :inherit variable-pitch))))
 '(transient-heading ((t (:foreground "#dbb32d" :weight bold))))
 '(transient-key ((t (:foreground "#dedede" :weight bold))))
 '(transient-argument ((t (:foreground "#3fc5b7" :weight bold))))
 '(transient-value ((t (:foreground "#3fc5b7" :weight bold))))
 '(transient-inactive-argument ((t (:foreground "#777777" :weight normal))))
 '(transient-inactive-value ((t (:foreground "#777777" :weight normal))))
 '(transient-unreachable ((t (:foreground "#777777" :weight normal))))
 '(transient-unreachable-key ((t (:foreground "#777777" :weight normal))))
 '(transient-enabled-suffix ((t (:foreground "#3a4d53" :background "#70b433" :weight bold))))
 '(transient-disabled-suffix ((t (:foreground "#3a4d53" :background "#ed4a46" :weight bold))))
 '(transient-nonstandard-key ((t (:underline nil :background "#5ede61cb536a"))))
 '(transient-mismatched-key ((t (:underline nil :background "#6414531c5239"))))
 '(transient-separator ((t (:extend t :background "#284b54"))))
 '(which-func ((((class color) (min-colors 89)) (:foreground "#70b433"))))
 '(which-key-command-description-face ((((class color) (min-colors 89)) (:foreground "#b9b9b9"))))
 '(which-key-group-description-face ((((class color) (min-colors 89)) (:foreground "#3fc5b7"))))
 '(which-key-key-face ((((class color) (min-colors 89)) (:bold t))))
 '(window-divider ((((class color) (min-colors 89)) (:foreground "#252525"))))
 '(window-divider-first-pixel ((((class color) (min-colors 89)) (:foreground "#252525"))))
 '(window-divider-last-pixel ((((class color) (min-colors 89)) (:foreground "#252525"))))
 '(default ((((class color) (min-colors 89)) (:foreground "#b9b9b9" :background "#181818")))))

(provide-theme 'solarized-selenized-black-pere)
