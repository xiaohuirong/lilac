# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.12.23
pkgrel=1
_pkgvernum=1228
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-${_pkgvernum}/linux/$CARCH/git-butler_${pkgver}_amd64.deb")
sha256sums=('4997f709ab753a6b8821d66c24525698a81b61e2d6ebb54eeeb5630abb53391a')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}

