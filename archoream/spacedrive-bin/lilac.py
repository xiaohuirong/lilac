#!/usr/bin/env python3

from lilaclib import *
import re

def try_remove_pkgrel_and_epoch(newver):
    version_pattern = r'(\d+\.\d+\.\d+)'

    match = re.search(version_pattern, newver)
    if match:
        version = match.group(1)
        return version
    else:
        return newver

def pre_build():
    aur_pre_build()
    
    if _G.newver is not None: 
        update_pkgver_and_pkgrel(try_remove_pkgrel_and_epoch(_G.newver))
