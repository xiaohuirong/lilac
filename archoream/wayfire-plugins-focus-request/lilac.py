from lilaclib import aur_pre_build, edit_file

def pre_build():
    aur_pre_build()

    for line in edit_file('PKGBUILD'):
        print(line)
        if line.startswith('build() {'):
            print(r'''  export PKG_CONFIG_PATH=/usr/lib/wlroots0.16/pkgconfig''')
