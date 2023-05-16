all: run

menu.txt:
	pip install bibtexparser
	git submodule init
	git submodule update
	cat <(sed 's/""/" "/g' ./cryptobib/abbrev0.bib) ./cryptobib/crypto.bib > input.bib
	@echo "Parsing the big TeX file, can take a while ..."
	python3 ./bibparse.py > menu.txt

init: menu.txt

run: menu.txt
	./cryptobib-menu

clean:
	rm -f menu.txt input.bib


