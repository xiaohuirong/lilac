from lilaclib import *

def pre_build():
    aur_pre_build()
    add_makedepends(['libglvnd', 'libxcursor', 'libxrandr', 'libxinerama', 'libxi'])

