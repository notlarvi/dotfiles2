;; Load configuration from the org file.
(use-package org :load-path "~/.config/emacs/elpa/org-mode/lisp/")
(org-babel-load-file (concat user-emacs-directory "config.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("b5fd9c7429d52190235f2383e47d340d7ff769f141cd8f9e7a4629a81abc6b19" "014cb63097fc7dbda3edf53eb09802237961cbb4c9e9abd705f23b86511b0a69" "f4d1b183465f2d29b7a2e9dbe87ccc20598e79738e5d29fc52ec8fb8c576fcfd" "88f7ee5594021c60a4a6a1c275614103de8c1435d6d08cc58882f920e0cec65e" default))
 '(package-selected-packages
   '(valign org-latex-preview org-mode cdlatex auctex org-fragtog evil-org general olivetti counsel ivy-rich rainbow-delimiters org-modern org-bullets telega doom-modeline ivy evil doom-themes))
 '(package-vc-selected-packages '((org-mode :url "https://code.tecosaur.net/tec/org-mode"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-document-title ((t (:inherit default :weight bold :foreground "unspecified-fg" :height 1.6 :underline nil))))
 '(org-level-1 ((t (:inherit default :weight bold :foreground "unspecified-fg" :height 1.5))))
 '(org-level-2 ((t (:inherit default :weight bold :foreground "unspecified-fg" :height 1.3))))
 '(org-level-3 ((t (:inherit default :weight bold :foreground "unspecified-fg" :height 1.2))))
 '(org-level-4 ((t (:inherit default :weight bold :foreground "unspecified-fg" :height 1.1))))
 '(org-level-5 ((t (:inherit default :weight bold :foreground "unspecified-fg"))))
 '(org-level-6 ((t (:inherit default :weight bold :foreground "unspecified-fg"))))
 '(org-level-7 ((t (:inherit default :weight bold :foreground "unspecified-fg"))))
 '(org-level-8 ((t (:inherit default :weight bold :foreground "unspecified-fg")))))
