# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.14.23
pkgrel=1
_pkgvernum=1959
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk-4.1' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-${_pkgvernum}/linux/$CARCH/GitButler_${pkgver}_amd64.deb")
sha256sums=('3a42cf3835d2e1151e90c36d22432eb2a8e96727eefba754233d1636f8eb4b6a')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}
