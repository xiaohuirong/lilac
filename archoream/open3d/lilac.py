from lilaclib import aur_pre_build, edit_file, add_makedepends

def pre_build():
    aur_pre_build()
    add_makedepends(["python-wheel"])

    for line in edit_file('PKGBUILD'):
        if r"glfw-x11" in line:
            line = line.replace(r"glfw-x11", r"glfw")
        print(line)

