# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.13.13
pkgrel=1
_pkgvernum=1460
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-${_pkgvernum}/linux/$CARCH/GitButler_${pkgver}_amd64.deb")
sha256sums=('46c705ed314585e6dd93dd1a3904c207aec0711da29629837ed8aefee0daef9b')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}
