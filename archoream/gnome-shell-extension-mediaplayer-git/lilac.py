from lilaclib import aur_pre_build, edit_file

def change_pkgver():
    pkgver = r'''pkgver() {
  cd "${srcdir}/${_pkgname}"
  ( set -o pipefail
    git describe --long 2>/dev/null | sed 's/\([^-]*-g\)/r\1/;s/-/./g' ||
    printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
  )
}
'''
    lines = pkgver.splitlines()
    for line in lines:
        print(line)


def pre_build():
    aur_pre_build()
    flag = False

    for line in edit_file('PKGBUILD'):
        if line == "pkgver() {":
            change_pkgver() 
            flag = True

        if flag and line == "}":
            flag = False
            continue

        if flag:
            continue
        else:
            print(line)
