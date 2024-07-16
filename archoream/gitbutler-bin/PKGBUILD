# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.12.11
pkgrel=1
_pkgvernum=1085
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-${_pkgvernum}/linux/$CARCH/git-butler_${pkgver}_amd64.deb")
sha256sums=('71d23d3e5140b21bc58b525e3bf491013645425e96c0e3a8f2e96f09dd5ce714')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}

