from lilaclib import *

def pre_build():
    aur_pre_build()
    add_makedepends(['glew', 'glfw-x11', 'libpulse'])

