TIMESTAMP=`date "+%Y-%m-%d.%H%M"`


all:
	latexmk -pdf main
pvc:
	latexmk -pdf main -pvc -synctex=1
timestamp:
	latexmk -pdf main 
	mkdir -p timestamped
	cp main.pdf timestamped/troupe-user-guide-$(TIMESTAMP).pdf 
