from lilaclib import *

def pre_build():
    aur_pre_build()
    run_cmd(['updpkgsums'])


