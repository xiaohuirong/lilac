from lilaclib import aur_pre_build, edit_file

def pre_build():
    aur_pre_build()

    for line in edit_file('PKGBUILD'):
        if line.startswith('depends=('):
            print(r'''depends=('wayfire-git' 'nlohmann-json' 'glib2' 'gtk3' 'gtkmm3' 'boost-libs' 'boost')''')
            continue
        print(line)
