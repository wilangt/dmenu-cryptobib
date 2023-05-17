# Cryptobib Menu

dmenu with cryptobib entries inside.

Select a cryptobib entry with key words in its title, authors, bibtex ID or IACR
eprint ID (1996/014 for instance), and copy its bibtex ID to clipboard for fast
citation insertion in a TeX file.

Open an IACR eprint article in a browser using `cryptobib-open`.

## Dependency
python3, git, xclip, dmenu, xdg-open (only for cryptobib-open) and bibtexparser 
python module (`pip install bibtexparser`)

## Setup
First, install the dependencies.
Then, running `make` will setup everything.
However, this can take a while (about 10 to 15 minutes) so another otion is to
switch to the `lazy` branch, with essential files already generated (might be
out of date).

## Usage
`make` to automatically do the setup (can take a while).
`make menu` or `./cryptobib-menu` to copy bibtex ID of the selected item.
`make open` or `./cryptobib-open` to open an IACR eprint article in a browser.

## Update
To update the cryptobib database, one needs to git pull the cryptobib repository
and generate again the `menu.txt` file with `make`.
`make update` does it all alone.
