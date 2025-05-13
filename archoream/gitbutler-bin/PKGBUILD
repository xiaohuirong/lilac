# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.14.21
pkgrel=1
_pkgvernum=1945
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk-4.1' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-${_pkgvernum}/linux/$CARCH/GitButler_${pkgver}_amd64.deb")
sha256sums=('b4f97984e12ebbf6d39b34f23cf001235f05f0230c96613e49507be124dc3401')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}
