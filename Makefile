

init:
	rm ~/.emacs
	rm ~/.emacs.d
	ln -fs `pwd`/emacs/emacs	~/.emacs
	ln -fs `pwd`/emacs		~/.emacs.d

pull:
	git pull origin master

push:
	git pull origin master
	git add .
	git commit -a
	git push origin master
