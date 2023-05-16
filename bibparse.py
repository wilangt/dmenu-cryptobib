import bibtexparser

with open('input.bib') as bibtex_file:
    bib_database = bibtexparser.load(bibtex_file)

for entry in bib_database.entries:
    if "ID" in entry and "author" in entry and "title" in entry:
        if entry["ID"][:6] == "EPRINT" and "note" in entry and entry["note"][:5] == "\\url{":
            url = entry["note"][5:-1]  # grab the url of the eprint
            print(entry["ID"], entry["author"].replace("\n", " "),
                    entry["title"] + " % " + url, sep="; ")
        else:
            print(entry["ID"], entry["author"].replace("\n", " "),
                    entry["title"], sep="; ")
