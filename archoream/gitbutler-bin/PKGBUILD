# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.14.25
pkgrel=1
_pkgvernum=1986
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk-4.1' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-${_pkgvernum}/linux/$CARCH/GitButler_${pkgver}_amd64.deb")
sha256sums=('6b7e944b366549a31f3905baeb468f6d89ef91a1ded65984224a60376812e4e4')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}
