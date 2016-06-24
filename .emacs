(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

;; theme
(load-theme 'ample t)


;; newline on ret
(add-hook 'f90-mode-hook
  (lambda () (local-set-key (kbd "RET") 'reindent-then-newline-and-indent)))

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

(add-to-list
 'smart-compile-alist
 '("\\.hs\\'"  . "ghc %f && ./%n"))

(add-to-list
 'smart-compile-alist
 '("\\.f90\\'"  . "make && ./%n"))

 
(custom-set-variables
 '(inhibit-startup-screen t))
(custom-set-faces
 )

;; bracket matching
(show-paren-mode 1)

;; linum
(global-linum-mode 1) 

(global-auto-revert-mode 1)

;; goto-line
(global-set-key (kbd "M-g") 'goto-line)
;; tramp
(require 'tramp)
(setq tramp-default-method "ssh")
;; (add-to-list 'tramp-remote-path "/opt/MPI/openmpi-1.6.5/linux/intel/bin")
(add-to-list 'tramp-remote-path 'tramp-own-remote-path)
;; (add-to-list 'tramp-remote-process-environment "OMP_NUM_THREADS=8")

(setenv "LD_LIBRARY_PATH" "/usr/local/lib")

;; read bashrc
(exec-path-from-shell-initialize)

;; fix backup folder
(setq
   backup-by-copying t      ; don't clobber symlinks
   backup-directory-alist
    '(("." . "/home/matthias/ownCloud/emacs"))    ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)       ; use versioned backups
