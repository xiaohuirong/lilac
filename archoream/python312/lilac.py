from lilaclib import aur_pre_build, edit_file

def pre_build():
    aur_pre_build()

    for line in edit_file('PKGBUILD'):
        print(line)
        if line.startswith('build() {'):
            print(r'''  # PGO should be done with -O3''')
            print(r'''  CFLAGS="${CFLAGS/-O2/-O3} -ffat-lto-objects"''')

