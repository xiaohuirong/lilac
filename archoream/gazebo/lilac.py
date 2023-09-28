from lilaclib import aur_pre_build, edit_file

def pre_build():
    aur_pre_build()

    for line in edit_file('PKGBUILD'):
        if line.startswith('build() {'):
            print(line)
            print("  patch -Np1 -d ${srcdir}/gazebo-classic-gazebo11_${pkgver} -i ${srcdir}/graphviz8.patch")
            print(r'''  sed -i '0,/#include/s//#include <cstdint>\n&/' "${srcdir}/gazebo-classic-gazebo11_${pkgver}/gazebo/rendering/deferred_shading/MaterialGenerator.hh"''')
            print(r'''  sed -i '0,/#include/s//#include <cstdint>\n&/' "${srcdir}/gazebo-classic-gazebo11_${pkgver}/gazebo/rendering/deferred_shading/SSAOLogic.hh"''')
            print(r'''  sed -i '0,/#include/s//#include <cstdint>\n&/' "${srcdir}/gazebo-classic-gazebo11_${pkgver}/gazebo/rendering/skyx/src/MeshManager.cpp"''')
            print(r'''  sed -i '0,/#include/s//#include <cstdint>\n&/' "${srcdir}/gazebo-classic-gazebo11_${pkgver}/gazebo/rendering/skyx/src/VClouds/GeometryBlock.cpp"''')
            continue

        if line.startswith('source='):
            print(r'''source=("${pkgname}-${pkgver}.tar.gz::https://github.com/gazebosim/gazebo-classic/archive/${pkgname}11_$pkgver.tar.gz" "graphviz8.patch")''')
            continue

        if line.startswith('sha256sums='):
            print(r'''sha256sums=('a990f27dd08e4461107ef8e29eef18470789e7cd87cdb26e7f384769603537fd' 'SKIP')''')
            continue

        print(line)



