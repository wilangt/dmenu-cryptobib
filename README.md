# Cryptobib Menu

dmenu with cryptobib entries.

## `dmenu-cryptobib.sh`
Select a cryptobib entry with key words in its title, authors, bibtex ID or IACR
eprint ID (e.g. 1996/014), and copy its bibtex ID to clipboard for fast
cite insertion in a TeX file.

## `dmenu-eprint.sh`
Open an IACR eprint article in a browser.

## Dependency
python, pip, git, xclip, dmenu, xdg-open (only for cryptobib-open)

## Setup
First, install the dependencies.
Then, running `make` will setup everything.
However, this can take a while (about 10 to 15 minutes) so another otion is to
switch to the `lazy` branch, with essential files already generated (might be
out of date).

## Usage
`make` to automatically do the setup (can take a while).
`make cryptobib` or `bash dmenu-cryptobib.sh` to copy bibtex ID of the selected item.
`make eprint` or `bash dmenu-eprint.sh` to open an IACR eprint article in a browser.

## Update
To update the cryptobib database, one needs to git pull the cryptobib repository
and generate again the `menu.txt` file with `make`.
`make update` does it all alone.
