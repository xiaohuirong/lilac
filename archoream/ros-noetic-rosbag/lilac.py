from lilaclib import aur_pre_build, edit_file

def pre_build():
    aur_pre_build()

    for line in edit_file('PKGBUILD'):
        print(line)
        if line.startswith('build() {'):
            print('''sed -i '1i\#define BOOST_TIMER_ENABLE_DEPRECATED' "${srcdir}/ros_comm-${pkgver}/tools/rosbag/src/encrypt.cpp''')
