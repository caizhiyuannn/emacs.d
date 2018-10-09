;; emacs built-in function settings

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(global-display-line-numbers-mode t)
(global-hl-line-mode t)
(delete-selection-mode t)

(setq inhibit-startup-screen t)

(setq tab-width 4)
(setq-default indent-tabs-mode nil)
(setq auto-save-interval 100)
(setq make-backup-files nil)

(setq mac-command-modifier 'super)

;; (load-theme (quote material-theme) t)

(define-key global-map (kbd "C-x <tab>") 'indent-region-or-buffer)
(global-set-key (kbd "<C-s-268632070>") 'toggle-frame-fullscreen)

;; 定义按键切换窗口
(define-key global-map "\C-x\ o" 'switch-window)


;; 配置按键绑定，C-s 默认是用正则表达式方式进行搜索操作；C-r 使用正则表达式反向搜索
(define-key global-map (kbd "C-s") 'isearch-forward-regexp)
(define-key global-map (kbd "C-r") 'isearch-backward-regexp)
;; (define-key global-map (kbd "C-M-s") 'isearch-forward)
;; (define-key global-map (kbd "C-M-r") 'isearch-backward)
(unbind-key "C-M-s" global-map)
(unbind-key "C-M-r" global-map)


;; 如果系统是mac，则设置窗口大小120x50；如果不是则全屏
(if (string= system-type "darwin")
	(progn
	  (setq initial-frame-alist '((top . 30) (left . 50) (width . 130) (height . 50)))
	  (set-face-attribute (quote default) nil :height 135)
	  (setenv "PATH" (concat (getenv "PATH") ":/usr/local/texlive/2016/bin/x86_64-darwin"))
	  (setq org-ditaa-jar-path "/opt/local/share/java/ditaa0_9.jar"))
  (progn
	(setq initial-frame-alist (quote ((fullscreen . maxmized))))
	(set-face-attribute (quote default) nil :height 130)
	)
  )



(provide 'init-setting)
