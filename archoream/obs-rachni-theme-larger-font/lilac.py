#!/usr/bin/env python3

from lilaclib import *

def try_remove_pkgrel(newver):
    match = re.search(r'-\d+$', newver)

    if match:
        result = newver[:match.start()]
    else:
        result = newver

    return result

def pre_build():
  if _G.newver is not None: 
      update_pkgver_and_pkgrel(try_remove_pkgrel(_G.newver))
