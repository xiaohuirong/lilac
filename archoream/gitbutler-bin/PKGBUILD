# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.12.9
pkgrel=1
_pkgvernum=1069
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-${_pkgvernum}/linux/$CARCH/git-butler_${pkgver}_amd64.deb")
sha256sums=('7a547f297b90d1a60cbb4d3d07f412e691595f464d03dd89ae4f1380d30b703e')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}

