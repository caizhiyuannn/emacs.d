;; custom thired party package setting
;; 

(use-package smartparens
  :init (use-package smartparens-config)
  :defer t
  :config
  (smartparens-global-mode)
  (show-smartparens-global-mode))


(use-package helm
  :init
  (use-package helm-config)
  :bind
  (("M-x" . helm-M-x)
   ("C-x C-f" . helm-find-files)
   ("C-x C-b" . helm-buffers-list)
   ))


(use-package helm-files
  :bind (:map helm-find-files-map
	      ( "TAB" . helm-execute-persistent-action)))


(use-package company
  :config
  (use-package company-lsp)
  (global-company-mode)
  (add-hook 'company-backends #'company-lsp)  
  (setq company-idle-delay 0.1)
  (setq company-minimum-prefix-length 2)
  )

(use-package lsp-mode
  :requires (company-lsp)
  :config
  (use-package lsp-python)
  (use-package lsp-ui)  
  (add-hook 'python-mode-hook #'lsp-python-enable)
  (add-hook 'python-mode-hook #'flycheck-mode)
  :hook
  (lsp-mode . lsp-ui-mode)
  )

(use-package neotree
  :bind
  ([f2] . neotree-toggle))

(use-package hungry-delete
  :config
  (global-hungry-delete-mode))

;; (when (display-graphic-p)
;;   (use-package spaceline-all-the-icons
;;     :init
;;     (use-package all-the-icons)
;;     :config
;;     (setq inhibit-compacting-font-caches t)
;;     ;; (spaceline-all-the-icons-theme)
;;     (spaceline-helm-mode)
;;     (spaceline-emacs-theme)		
;;     (spaceline-info-mode)
;;     (setq neo-theme 'icons)))

(use-package spaceline
  :if (display-graphic-p)
  :init
  (use-package all-the-icons)
  (use-package spaceline-config)
  :config
  (setq inhibit-compacting-font-caches t)
  (spaceline-helm-mode)
  (spaceline-define-segment datetime
    (format-time-string "%m月%d日 %H:%M"))
  (spaceline-emacs-theme '(datetime
                           :face highlight-face))
  ;; (spaceline-info-mode)
  (setq neo-theme 'icons))

(use-package material-theme
  :ensure t
  :config
  (load-theme 'material t))

;; (use-package exec-path-from-shell
;;   :ensure t
;;   :config
;;   ;; 如果系统为Mac，则将shell的PATH 初始化到emacs。
;;   (when (memq window-system '(mac ns))  
;;     (exec-path-from-shell-initialize)))

(use-package exec-path-from-shell
  :if (memq window-system '(mac ns))
  :ensure t
  :config
  (exec-path-from-shell-initialize))

(use-package web-mode
  :defer t
  :init
  (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode)))

(use-package yaml-mode
  :defer t
  :init
  (add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode)))

(use-package htmlize
  :defer t )

(use-package ox-jekyll
  :config
  (setq org-publish-project-alist
        '(
          ("org-to-jekyllmd"
           ;; Path to your org files.
           :base-directory "~/Github/caizhiyuannn.github.io/_orgs/"
           :base-extension "org"
           ;; Path to your Jekyll project.
           :publishing-directory "~/Github/caizhiyuannn.github.io/_posts/orgs/"
           :recursive t
           :publishing-function org-jekyll-publish-to-md
           ;; :sitemap-filename (org-jekyll-filename-date org-export-output-file-name)
           ;; :headline-levels 3
           ;; :html-extension "html"
           ;; :body-only t ;; Only export section between <body> </body>
           ))))

(use-package yasnippet
  :config
  (yas-global-mode 1))

(use-package org-mime)
(use-package smtpmail)

(provide 'init-use-packages)
