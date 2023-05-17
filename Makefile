all: menu.txt clean

menu.txt: cryptobib/crypto.bib
	sed 's/""/" "/g' cryptobib/abbrev0.bib > abbrev0_no_empty_strings.bib
	cat abbrev0_no_empty_strings.bib cryptobib/crypto.bib > input.bib
	@echo "Parsing the big BibTeX file can take up to 15 minutes, perfect for a coffee break!"
	python3 bibparse.py > menu.txt

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
