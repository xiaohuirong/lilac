# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.12.22
pkgrel=1
_pkgvernum=1224
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-${_pkgvernum}/linux/$CARCH/git-butler_${pkgver}_amd64.deb")
sha256sums=('8d1ebb64c6a0b63b14507052c5ad51cdfc995a3ed4c4323568038159b9f8770b')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}

