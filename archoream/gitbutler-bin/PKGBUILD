# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.14.1
pkgrel=1
_pkgvernum=1533
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk-4.1' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-${_pkgvernum}/linux/$CARCH/GitButler_${pkgver}_amd64.deb")
sha256sums=('799242bbf67f4a116246d12392ca4a8c1f1a1f779fd163597d9453c7ad36ba28')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}
