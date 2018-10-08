;;   __	       	       	 _   _
;;  / _|_   _ _	__   ___| |_(_)	___  _ __
;; | |_| | | | '_ \ / __| __| |/ _ \| '_ \
;; |  _| |_| | | | | (__| |_| |	(_) | |	| |
;; |_| 	\__,_|_| |_|\___|\__|_|\___/|_|	|_|


;; 定义函数，打开初始化的配置文件
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el")
  )

;; 自动缩进buffer
(defun indent-buffer()
  "Indent the currently visited buffer"
  (interactive)
  (indent-region (point-min) (point-max))
  )

;; 判断如果选择了buffer 则缩进buffer；如果不是则全局缩进合适的位置
(defun indent-region-or-buffer()
  "Indent a region if selected, otherwise the whole buffer. "
  (interactive)
  (save-excursion
	(if (region-active-p)
		(progn
		  (indent-region (region-beginning) (region-end))
		  (message "Indent selected region."))
	  (progn
		(indent-buffer)
		(message "Indent buffer.")))))

;; 如果系统为Mac，则将shell的PATH 初始化到emacs。
;; (when (memq window-system '(mac ns))
;;  (exec-path-from-shell-initialize))



(provide 'init-function)
