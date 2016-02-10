(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

;; theme
(load-theme 'ample t)


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
 '(inhibit-startup-screen t))
(custom-set-faces
 )

;; bracket matching
(show-paren-mode 1)

;; linum
(global-linum-mode 1) 

(global-auto-revert-mode 1)


;; tramp
(require 'tramp)
(setq tramp-default-method "ssh")
;; (add-to-list 'tramp-remote-path "/opt/MPI/openmpi-1.6.5/linux/intel/bin")
(add-to-list 'tramp-remote-path 'tramp-own-remote-path)
