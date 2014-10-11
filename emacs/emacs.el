(setq local-coding-system 'utf-8)
(setq-default make-backup-files nil)
(setq inhibit-startup-message t)
;; 以 y/n代表 yes/no
(fset 'yes-or-no-p 'y-or-n-p)
;; 设置缩进
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq-default indent-line-function 'insert-tab)

(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(display-time)

;;代码折叠
(add-hook 'c-mode-hook 'hs-minor-mode)
(add-hook 'c++-mode-hook 'hs-minor-mode)  
(add-hook 'go-mode-hook 'hs-minor-mode)  
(add-hook 'php-mode-hook 'hs-minor-mode)  
;; (add-hook 'erlang-mode-hook 'hs-minor-mode)  ;; seems like no useful




;;------------未整理的配置------------------------------------------
;; 显示括号匹配 
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;; 语法高亮
(global-font-lock-mode t)

;; 默认显示 80列就换行 
(setq default-fill-column 80)

;; 设置字体
;; 方法为: emacs->options->Set Default Font->"M-x describe-font"查看当前使用的字体名称、字体大小
(set-default-font " -bitstream-Courier 10 Pitch-normal-normal-normal-*-19-*-*-*-m-0-iso10646-1")
 
;; 显示列号
(setq column-number-mode t)
(setq line-number-mode t)



(require 'linum)
(global-linum-mode t)

;;(require 'color-theme)
;;(setq color-theme-is-global t)
;;(color-theme-initialize)
;;(color-theme-dark-blue2)

;;(add-to-list 'load-path "/home/gordon/emacs")




;;(require 'distel)
;;(distel-setup)

