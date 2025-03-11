# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.14.10
pkgrel=1
_pkgvernum=1729
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk-4.1' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-${_pkgvernum}/linux/$CARCH/GitButler_${pkgver}_amd64.deb")
sha256sums=('f11c2beef9eb9160dbbc27ead359839a550e5c09388a2bf066e31370da21e6f5')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}
