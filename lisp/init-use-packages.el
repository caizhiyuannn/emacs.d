;; custom thired party package setting
;; 

(use-package smartparens
  :init (use-package smartparens-config)
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

(when (display-graphic-p)
  (use-package spaceline-all-the-icons
    :init
    (use-package all-the-icons)
    :config
    (setq inhibit-compacting-font-caches t)
    (spaceline-all-the-icons-theme)
    (spaceline-helm-mode)
;;    (spaceline-emacs-theme)		
    (spaceline-info-mode)
    (setq neo-theme 'icons)))

(use-package material-theme
  :ensure t
  :config
  (load-theme 'material t))

(use-package exec-path-from-shell
  :config
  ; 如果系统为Mac，则将shell的PATH 初始化到emacs。
  (when (memq window-system '(mac ns))  
    (exec-path-from-shell-initialize)))

(use-package web-mode
  :init
  (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode)))

(use-package yaml-mode
  :init
  (add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode)))



(provide 'init-use-packages)
