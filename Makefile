all: init 

menu.txt:
	pip install bibtexparser
	git submodule init
	git submodule update
	sed 's/""/" "/g' cryptobib/abbrev0.bib > abbrev0_no_empty_strings.bib
	cat abbrev0_no_empty_strings.bib cryptobib/crypto.bib > input.bib
	@echo "Parsing the big TeX file, can take a while ..."
	python3 bibparse.py > menu.txt

init: menu.txt

menu: menu.txt
	./cryptobib-menu

open: menu.txt
	./cryptobib-open

clean:
	rm -f menu.txt input.bib


