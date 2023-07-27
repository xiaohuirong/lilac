from lilaclib import *

def pre_build():
    aur_pre_build()
    add_makedepends(['dbus', 'dbus-glib'])

