# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.14.7
pkgrel=1
_pkgvernum=1670
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk-4.1' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-${_pkgvernum}/linux/$CARCH/GitButler_${pkgver}_amd64.deb")
sha256sums=('2879ac7a3e57d432c3a35b8da1f0923dbf76a147587a7a90e1dd44c5c801574b')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}
