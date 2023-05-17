all: setup init clean

setup:
	pip install bibtexparser
	git submodule init
	git submodule update

menu.txt:
	sed 's/""/" "/g' cryptobib/abbrev0.bib > abbrev0_no_empty_strings.bib
	cat abbrev0_no_empty_strings.bib cryptobib/crypto.bib > input.bib
	python3 bibparse.py > menu.txt

init: menu.txt

menu: menu.txt
	./cryptobib-menu

open: menu.txt
	./cryptobib-open

update:
	(cd cryptobib && git pull)

clean:
	rm -f input.bib abbrev0_no_empty_strings.bib

mrpoper: clean
	rm -f menu.txt
