from lilaclib import aur_pre_build, edit_file
import re

def pre_build():
    aur_pre_build()

    file = edit_file('PKGBUILD')
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
        file = file.replace(match, replacement)

    for line in file:
        print(line)
