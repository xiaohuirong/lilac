# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.13.14
pkgrel=1
_pkgvernum=1471
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-${_pkgvernum}/linux/$CARCH/GitButler_${pkgver}_amd64.deb")
sha256sums=('23e4dce1b3dd5bd3b76f83cc2ddef74bb31f786c33a6abcd53584a2d2576558d')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}
