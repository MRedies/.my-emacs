(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

;; theme
(load-theme 'gotham t)


;; smart compile
(require 'smart-compile)

(global-set-key "\M-c" 'smart-compile)

(add-to-list
'smart-compile-alist
'("\\.c\\'"   .   "make"))

(add-to-list
'smart-compile-alist
'("\\.rs\\'"   .   "cargo run"))

(add-to-list
'smart-compile-alist
'("\\.toml\\'"   .   "cargo run"))

(add-to-list
'smart-compile-alist
'("\\.py\\'"   .   "ipython %f"))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; bracket matching
(show-paren-mode 1)

;; linum
(global-linum-mode 1) 

(global-auto-revert-mode 1)
