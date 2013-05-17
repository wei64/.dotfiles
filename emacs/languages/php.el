;; php
(add-to-list 'load-path "~/.emacs.d/config/languages/php-mode" )
(load "php-mode")    ;php mode指定
(add-to-list 'auto-mode-alist
             '("\\.php[34]?\\'\\|\\.phtml\\'" . php-mode))

