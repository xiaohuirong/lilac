# Maintainer: Alexander Courtis <alex@courtis.org>
pkgname=way-displays
pkgver=1.14.0
pkgrel=3
pkgdesc="way-displays: Auto Manage Your Wayland Displays"
arch=('x86_64')
url="https://github.com/alex-courtis/way-displays"
license=('MIT')
depends=('wayland' 'wlroots0.18' 'libinput' 'yaml-cpp')
makedepends=('git' 'make' 'gcc')
source=("https://github.com/alex-courtis/${pkgname}/archive/refs/tags/${pkgver}.tar.gz")
sha256sums=('c61a2fda5e8c94ed9955a18f634135fe203ad1f6b4c77da37241ff470f99f779')
install=way-displays.install

build() {
	cd "$pkgname-$pkgver"
	make CC=gcc CXX=g++ OFLAGS="-O3 -fno-lto" way-displays
}

package() {
	cd "$pkgname-$pkgver"
	make PREFIX="/usr" PREFIX_ETC="" DESTDIR="$pkgdir" install
}

