# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.14.3
pkgrel=1
_pkgvernum=1548
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk-4.1' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-${_pkgvernum}/linux/$CARCH/GitButler_${pkgver}_amd64.deb")
sha256sums=('c573cc6d8baecdf508cbc3b85fbda66f09c575d1632db7b00f327b0692f12bd4')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}
