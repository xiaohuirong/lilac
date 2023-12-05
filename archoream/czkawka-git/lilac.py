from lilaclib import aur_pre_build, edit_file

def pre_build():
    aur_pre_build()

    for line in edit_file('PKGBUILD'):
        if "install -Dm644 LICENSE" in line:
            line = r'''install -Dm644 czkawka_gui/LICENSE $pkgdir/usr/share/licenses/${_basename}/LICENSE'''
        print(line)
