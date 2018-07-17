(setq load-path 
      (append '(
                "~/.emacs.d/themes/solarized-emacs"
                "~/.emacs.d/themes/zenburn-emacs" 
                "~/.emacs.d/themes/molokai-theme"
        ) load-path))

(when (>= emacs-major-version 24)
  (setq custom-theme-load-path (append '(
                       "~/.emacs.d/themes/solarized-emacs"
                       "~/.emacs.d/themes/zenburn-emacs"
                       "~/.emacs.d/themes/molokai-theme")
                   custom-theme-load-path)))
(cond
 ((>= emacs-major-version 24) 
  ;;(load-theme 'solarized-dark t)
  ;;(load-theme 'zenburn t)
  (load-theme 'molokai t)
  )
 (t (load-theme 'molokai)))


;; auto-complete
(add-to-list 'load-path "~/.emacs.d/config/auto-complete")
; Load the default configuration
(require 'go-autocomplete)
;(require 'auto-complete-config)
; Make sure we can find the dictionaries
(add-to-list 'ac-dictionary-directories "~/.emacs.d/config/auto-complete/ac-dict")

; Use dictionaries by default
(setq-default ac-sources (add-to-list 'ac-sources 'ac-source-dictionary))
(global-auto-complete-mode t)
; Start auto-completion after 2 characters of a word
(setq ac-auto-start 2)
; case sensitivity is important when finding matches
(setq ac-ignore-case nil)





;; yasnippet
(add-to-list 'load-path "~/.emacs.d/config/yasnippet")
;; Load the library
(require 'yasnippet)
(yas/initialize)
;; Load the snippet files themselves
(yas/load-directory "~/.emacs.d/config/yasnippet/snippets/text-mode")
;; Let's have snippets in the auto-complete dropdown
(add-to-list 'ac-sources 'ac-source-yasnippet)





;; auto-save-list
(add-to-list 'load-path "~/.emacs.d/auto-save-list" )



;; =================================================
;;  语言相关
;; =================================================

;;(add-to-list 'load-path "~/.emacs.d/languages/erlang.el" )
;;(load "~/.emacs.d/languages/erlang.el")
;;(load "~/.emacs.d/languages/golang.el")
;;(load "~/.emacs.d/languages/php.el" )
;;(load "~/.emacs.d/languages/web.el" )
;;(load "~/.emacs.d/languages/toml-mode.el" )
;;(load "~/.emacs.d/languages/markdown-mode.el" )



;(load "~/.emacs.d/languages/go-mode-load.el")



;;(require 'go-mode-load)



;; ===================================================
;;  依赖相关
;; ===================================================

(load "~/.emacs.d/deps.el" )


