all: menu.txt clean

venv/bin/python:
	python3 -m venv ./venv
	venv/bin/pip install bibtexparser

menu.txt: cryptobib/crypto.bib venv/bin/activate
	sed 's/""/" "/g' cryptobib/abbrev0.bib > abbrev0_no_empty_strings.bib
	cat abbrev0_no_empty_strings.bib cryptobib/crypto.bib > input.bib
	@echo "* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *  *"
	@echo "* Parsing the BibTeX file can take up to 15 minutes, perfect for a coffee break! *"
	@echo "* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *  *"
	venv/bin/python bibparse.py > menu.txt

cryptobib/crypto.bib:
	git submodule init
	@echo "Downloading CryptoBib ..."
	git submodule update

menu: menu.txt
	./cryptobib-menu

open: menu.txt
	./cryptobib-open

update_cryptobib:
	(cd cryptobib && git switch master && git pull)

update: update_cryptobib all

clean:
	rm -f input.bib abbrev0_no_empty_strings.bib

mrproper: clean
	rm -f menu.txt
