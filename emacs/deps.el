

;; 将子窗口自动编号,然后按M-0…9跳转
;; from: https://github.com/nschum/window-numbering.el
(load "~/.emacs.d/deps/window-numbering.el")
(require 'window-numbering)
(window-numbering-mode 1)



;; undo/redo之前的窗口操作
;; from: http://puntoblogspot.blogspot.jp/2011/05/undo-layouts-in-emacs.html
;; from: http://www.emacswiki.org/emacs/WinnerMode
;;; winner-mode
(winner-mode 1)
(global-set-key (kbd "C-x 4 u") 'winner-undo)
(global-set-key (kbd "C-x 4 r") 'winner-redo)



