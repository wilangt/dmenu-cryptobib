import bibtexparser

with open('input.bib') as bibtex_file:
    bib_database = bibtexparser.load(bibtex_file)

for entry in bib_database.entries:
    print(entry["ID"], entry["author"].replace("\n", " "), entry["title"], 
            sep="; ")
