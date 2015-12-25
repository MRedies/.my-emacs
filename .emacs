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
