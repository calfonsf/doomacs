(setq doom-theme 'doom-tokyo-night)

(setq doom-font (font-spec :family "FiraMono Nerd Font" :size 18))

(setq display-line-numbers-type `relative)

(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
(setq tab-width 4)
(setq indent-line-function 'insert-tab)
(setq org-edit-src-content-indentation 0)

(evil-define-key `normal dired-mode-map
  (kbd "h") `dired-up-directory
  (kbd "l") `dired-find-file
  )

(setq org-roam-directory "G:/Workstation/Notes/")

(after! org-roam
  (setq org-roam-list-files-commands '(find fd fdfind rg)))

(after! org-block
  (setq org-image-actual-width 600))

(setq org-superstar-special-todo-items t)
(setq org-superstar-item-bullet-alist
  '((?* . ?✦)
    (?+ . ?◆)
    (?- . ?●)))

(add-hook 'org-mode-hook
          (lambda ()
            (push '("[ ]" . "❎") prettify-symbols-alist)
            (push '("[X]" . "✅" ) prettify-symbols-alist)
            (prettify-symbols-mode)
            ))

(setq emojify-display-style 'unicode)

(after! org
  (setq org-startup-folded t))

(setq org-hide-emphasis-markers t)

(let* (
       (headline `(:weight bold)))

  (custom-theme-set-faces
   'user
   `(org-level-8 ((t (,@headline :inherit outline-8))))
   `(org-level-7 ((t (,@headline :inherit outline-7))))
   `(org-level-6 ((t (,@headline :inherit outline-6))))
   `(org-level-5 ((t (,@headline :inherit outline-5))))
   `(org-level-4 ((t (,@headline :inherit outline-4 :height 1.1))))
   `(org-level-3 ((t (,@headline :inherit outline-3 :height 1.25))))
   `(org-level-2 ((t (,@headline :inherit outline-2 :height 1.4))))
   `(org-level-1 ((t (,@headline :inherit outline-1 :height 1.60))))
   `(org-document-title ((t (,@headline ,:height 2.0 :underline nil))))))
