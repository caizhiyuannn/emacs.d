
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq debug-on-error t)
(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(when (file-exists-p custom-file)
  (load-file custom-file))

(require 'init-package)

(require 'init-setting)
(require 'init-use-packages)
