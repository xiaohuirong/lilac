from lilaclib import aur_pre_build, edit_file

def pre_build():
    aur_pre_build()

    for line in edit_file('PKGBUILD'):
        if r"'kwallet'" in line:
            line = line.replace(r"'kwallet'", r"'kwallet5'")
        print(line)
