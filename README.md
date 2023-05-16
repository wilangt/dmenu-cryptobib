# Cryptobib Menu

dmenu with cryptobib entries inside.

Select a cryptobib entry with key words in its title, authors, bibtex ID or IACR
eprint ID (1996/014 for instance), and copy its bibtex ID to clipboard for fast
citation insertion in a TeX file.

Open an IACR eprint article in a browser using `cryptobib-open`.

## Dependency
python3, pip, git, xclip, dmenu, xdg-open (only for cryptobib-open)

## Initialize
`make init` (can take a while).
Or switch to the `lazy` branch, with `menu.txt` already generated (can
be out of date).

## Usage
`make menu` or `./cryptobib-menu` to copy bibtex ID of the selected item.
`make open` or `./cryptobib-menu` to open an IACR eprint article in a browser.
