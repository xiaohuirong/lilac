from lilaclib import aur_pre_build, edit_file

def pre_build():
    aur_pre_build()

    for line in edit_file('PKGBUILD'):
        print(line)
        if "sed -i 's/clang/gcc/' Makefile" in line:
            print("     sed -i 's/-march=native//' Makefile")
