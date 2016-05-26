;; move M-x customize out of the way
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

;; setup melpa
(require 'package) 
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

;; proper backup
(setq
   backup-by-copying t 
   backup-directory-alist
    '(("." . "~/.emacs.backups"))
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)    

;; no more typing yes or no
(defalias 'yes-or-no-p 'y-or-n-p)
(put 'upcase-region 'disabled nil)
