import bibtexparser

with open('input.bib') as bibtex_file:
    bib_database = bibtexparser.load(bibtex_file)

for entry in bib_database.entries:
    if "ID" in entry and "author" in entry and "title" in entry:
        print(entry["ID"], entry["author"].replace("\n", " "), entry["title"], 
            sep="; ")
