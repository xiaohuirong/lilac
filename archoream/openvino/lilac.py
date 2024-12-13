from lilaclib import *

def pre_build():
    aur_pre_build()
    run_cmd(['git config http.proxy http://chat.hoream.top:8889'])

