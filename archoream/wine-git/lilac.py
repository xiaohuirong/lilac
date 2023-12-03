from lilaclib import aur_pre_build, edit_file, add_makedepends, add_depends

def pre_build():
    aur_pre_build()
    add_depends(['wayland'])
    add_makedepends(['wayland-protocols'])

    for line in edit_file('PKGBUILD'):
        print(line)
        if "--with-gstreamer" in line:
            print(r'''      --with-wayland \''')
            print(r'''      --with-vulkan \''')
