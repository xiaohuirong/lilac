#!/usr/bin/env python3

from lilaclib import *

def post_build():
    git_pkgbuild_commit()
    update_aur_repo()
# vim:set ts=2 sw=2 et:
