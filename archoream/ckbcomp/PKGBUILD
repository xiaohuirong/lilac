# Maintainer: Nissar Chababy <funilrys at outlook dot com>
# Ex-Maintainer: 	Jeroen Bollen <jbinero at gmail dot comau>

pkgname=ckbcomp
pkgver=1.234
pkgrel=1
pkgdesc="Compile a XKB keyboard description to a keymap suitable for loadkeys or kbdcontrol"
arch=(any)
url="http://anonscm.debian.org/cgit/d-i/console-setup.git/"
license=('GPL2')
depends=('perl')
source=("http://ftp.debian.org/debian/pool/main/c/console-setup/console-setup_${pkgver}.tar.xz")
sha512sums=('902da702a02b5b088d2f0838611d6ca90ff164237c74755071bc456a13e6cf542d72cf0ebd2704c265b509cd9479a2216a366dabfdb832ebecc79970eadf67d6')
conflicts=(ckbcomp-bin)

package() {
    if [[ -d "${srcdir}/console-setup" ]]
    then
        cd console-setup
    elif [[ -d "${srcdir}/console-setup-${pkgver}" ]]
    then 
        cd console-setup-${pkgver} 
    elif [[ -d "${srcdir}/work" ]]
    then
        cd work
    else
	echo "Source directory not found.".
	exit 1
    fi


    if [[ ${?} != 0 ]]
    then
        cd console-setup-${pkgver}
    fi

    install -d ${pkgdir}/usr/bin/
    install -m755 Keyboard/ckbcomp ${pkgdir}/usr/bin/
}
