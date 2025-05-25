# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.14.26
pkgrel=1
_pkgvernum=2003
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk-4.1' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-${_pkgvernum}/linux/$CARCH/GitButler_${pkgver}_amd64.deb")
sha256sums=('0688bfecca0fb41062aef62999c8e7cd4a79d016c83a9422f16eb5cb20c1105e')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}
