# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.14.18
pkgrel=1
_pkgvernum=1859
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk-4.1' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-${_pkgvernum}/linux/$CARCH/GitButler_${pkgver}_amd64.deb")
sha256sums=('1e56b3045ae8794f3ad7979513c8b7e3f6e47906034107fc86f4d6ab64ebb7bf')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}
