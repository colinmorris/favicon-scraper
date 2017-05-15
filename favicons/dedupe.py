
f_dupes = open('dupes.tmp')
f_all = open('f2.tmp')

dupe = f_dupes.next()[:-1]
found_first = False
for fname in f_all:
    if fname.startswith(dupe):
        if not found_first:
            found_first = True
        else:
            print fname,
    elif found_first:
        dupe = f_dupes.next()[:-1]
        found_first = False
