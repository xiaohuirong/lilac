from lilaclib import aur_pre_build, edit_file, add_makedepends, add_depends

def pre_build():
    aur_pre_build()
    add_depends(['wayland', 'lib32-wayland', 'libxkbcommon', 'lib32-libxkbcommon'])
    add_makedepends(['wayland-protocols'])

    for line in edit_file('PKGBUILD'):
        print(line)
        if "--with-gstreamer" in line:
            print("      --with-wayland \\")
            print("      --with-vulkan \\")
