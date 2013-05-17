

;; erlang
(add-to-list 'load-path "~/.emacs.d/config/languages/erlang")
(load "erlang")
(add-to-list 'auto-mode-alist
             '("\\.erl?\\'\\|\\.hrl\\'" . erlang-mode))


(defun my-erlang-mode-hook()
  (flymake-erlang-mode-hook)
  (eval-after-load "w3m" '(w3m-erlang-mode-hook))
 )
(add-hook 'erlang-mode-hook 'my-erlang-mode-hook)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(safe-local-variable-values (quote ((erlang-indent-level . 4)))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )


;;(add-hook 'erlang-mode-hook
;; (lambda ()
;;(setq inferior-erlang-machine-options '("-sname" "emacs"))
;;(imenu-add-to-menubar "imenu")))

;;(require 'w3m)
;;(setq browse-url-browser-function 'w3m-browse-url-other-windows)
;;(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL" t)
;;(defun w3m-browse-url-other-windows (url &optional newwin)
;;  (let ((w3m-pop-up-windows t))
;;    (if (one-window-p) (split-window-horizontally))
;;    (other-window 1)
;;    (w3m-browse-url url newwin)))
;;(defun w3m-erlang-mode-hook ()
;;  (w3m-browse-url-other-windows "http://www.erlang.org/doc/index.html")
;;  (other-window 1)
;;)


(require 'flymake)
(defun flymake-erlang-init()
  (let* ((temp-file (flymake-init-create-temp-buffer-copy
		     'flymake-create-temp-inplace))
	 (local-file (file-relative-name temp-file
		       (file-name-directory buffer-file-name))))
    (list "~/.emacs.d/flymake/erlang/check" (list local-file))))
(add-to-list 'flymake-allowed-file-name-masks '("\\.erl\\'" flymake-erlang-init))
(defun flymake-erlang-mode-hook()
  (flymake-mode t))


