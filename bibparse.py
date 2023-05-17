import bibtexparser

def main():
    print("Parsing the big BibTeX file, can take a while (10 to 15 minutes), it's time for coffee!")

    with open('input.bib') as bibtex_file:
        bib_database = bibtexparser.load(bibtex_file)

    entry_list = bib_database.entries

    entry_list.sort(key=lambda entry:
        (-int(entry["year"]) if "year" in entry else 0,
        entry["author"] if "author" in entry else "ZZZ",
        entry["title"] if "title" in entry else "ZZZ",
        entry["ID"].replace("EPRINT", "ZZZ") if "ID" in entry else "ZZZ"))
    # Sort by year (more recent first) then author and title.
    # If ambiguity, put EPRINT entries last.

    for entry in entry_list:
        print(entry["ID"] if "ID" in entry else "NO ID", end="; ")
        print(entry["author"].replace("\n", " ") if "author" in entry else "NO AUTHOR", end="; ")
        print(entry["title"] if "title" in entry else "NO TITLE", end="")
        if entry["ID"][:6] == "EPRINT" and "note" in entry and entry["note"][:5] == "\\url{":
            url = entry["note"][5:-1]  # grab the url of the eprint
            print(" %", url, end="")
        print()  # New line

if __name__ == "__main__":
    main()
