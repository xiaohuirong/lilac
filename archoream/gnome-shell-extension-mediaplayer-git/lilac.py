from lilaclib import aur_pre_build, edit_file
import re

def pre_build():
    aur_pre_build()

    with open('PKGBUILD', "r") as file:
        file_contents = file.read()

    pattern = r"pkgver\(\) \{\n.*?\}\n"
    matches = re.findall(pattern, file_contents, re.DOTALL)
    replacement = r'''pkgver() {
  cd "${srcdir}/${_pkgname}"
  ( set -o pipefail
    git describe --long 2>/dev/null | sed 's/\([^-]*-g\)/r\1/;s/-/./g' ||
    printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
  )
}
'''
    for match in matches:
        file_contents = file_contents.replace(match, replacement)

    with open('PKGBUILD', "w") as file:
        file.write(file_contents)

