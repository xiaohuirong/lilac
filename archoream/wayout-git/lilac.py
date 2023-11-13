from lilaclib import aur_pre_build, edit_file

def pre_build():
    aur_pre_build()

    for line in edit_file('PKGBUILD'):
        if r"'rustup'" in line:
            line = line.replace(r"rustup", r"cargo")
        print(line)

