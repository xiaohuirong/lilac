from lilaclib import *

def pre_build():
    aur_pre_build()
    run_cmd(['updpkgsums'])

    for line in edit_file('PKGBUILD'):
        if line.startswith('groups=('):
            continue
        print(line)
