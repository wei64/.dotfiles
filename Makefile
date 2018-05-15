
default:
	@echo "use the following options:"
	@echo -e "\tmake install"
	@echo -e "\tmake pull"
	@echo -e "\tmake push"


install:
	rm -f ~/.emacs
	rm -rf ~/.emacs.d
	ln -fs `pwd`/emacs/emacs	~/.emacs
	ln -fs `pwd`/emacs		~/.emacs.d

pull:
	git pull origin master

push:
	git add .
	git commit -a
	git push origin master
