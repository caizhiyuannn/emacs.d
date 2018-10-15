
(require 'package)


(setq package-archives '(
			("gnu" . "https://elpa.emacs-china.org/gnu/")
			("melpa" . "https://elpa.emacs-china.org/melpa/")))


(setq cai/packages-list '(
			  use-package
			  smartparens
			  helm
			  company
			  company-lsp
			  lsp-mode
			  lsp-python
			  lsp-ui
			  hungry-delete
			  neotree
			  all-the-icons
                          spaceline-all-the-icons
                          spaceline
                          powerline
			  evil
			  material-theme
			  switch-window
                          exec-path-from-shell
                          web-mode
                          yaml-mode
                          htmlize
			  ))


(defvar cai/package-selected-packages nil)

(defun cai/require (package &optional non-refresh)
  (let* ((available
	  (or (package-installed-p package)
	      (if (or (assoc package package-archive-contents) non-refresh)
		  (package-install package)
		(progn
		  (package-refresh-contents)
		  (cai/require package t)))
	      )
	  ))
    
    (prog1 available
      (when (and available (boundp 'package-selected-packages))
	(add-to-list 'cai/package-selected-packages package t)))))

(setq package-enable-at-startup nil)
(package-initialize)

(dolist (package cai/packages-list nil)
  (unless (package-installed-p package)
    (cai/require package)))

;; package.el auto require installed package
;; (eval-when-compile
;;   (require 'use-package))

(provide 'init-package)
