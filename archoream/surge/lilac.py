from lilaclib import *

def pre_build():
    aur_pre_build()
    update_pkgver_and_pkgrel(_G.newver)

    for line in edit_file('PKGBUILD'):
        if line.startswith('groups='):
            pass
        else:
            print(line)

