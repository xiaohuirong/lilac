# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.14.8
pkgrel=1
_pkgvernum=1700
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk-4.1' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-${_pkgvernum}/linux/$CARCH/GitButler_${pkgver}_amd64.deb")
sha256sums=('d2c87aedbddda4839a7b9ab343af6de2ced60056a733c85825ef8c3b84ae51d1')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}
