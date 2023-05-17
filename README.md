# Cryptobib Menu

dmenu with cryptobib entries inside.

Select a cryptobib entry with key words in its title, authors, bibtex ID or IACR
eprint ID (1996/014 for instance), and copy its bibtex ID to clipboard for fast
citation insertion in a TeX file.

Open an IACR eprint article in a browser using `cryptobib-open`.

## Dependency
python3, pip, git, xclip, dmenu, xdg-open (only for cryptobib-open).

## Setup
- Install the dependecies (see above),
- Init and update the submodule (not necessary if using the `lazy`
  brach, see below)

Running `make setup` does it automatically.

## Initialize
`make init` (can take a while, about 10 to 15 minutes).
Or switch to the `lazy` branch, with `menu.txt` already generated (can
be out of date).

## Usage
`make` to automatically do the setup and initialization steps.
`make menu` or `./cryptobib-menu` to copy bibtex ID of the selected item.
`make open` or `./cryptobib-open` to open an IACR eprint article in a browser.
