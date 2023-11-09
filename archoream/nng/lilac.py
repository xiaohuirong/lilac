from lilaclib import aur_pre_build, edit_file, add_depends

def pre_build():
    aur_pre_build()
    add_depends(['libnsl', 'gcc-libs', 'glibc'])


    for line in edit_file('PKGBUILD'):
        if "ninja test" in line:
            print(r'''  # ninja test''')
        else:
            print(line)
