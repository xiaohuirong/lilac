# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.14.13
pkgrel=1
_pkgvernum=1764
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk-4.1' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-${_pkgvernum}/linux/$CARCH/GitButler_${pkgver}_amd64.deb")
sha256sums=('850ca23f15d2b30e085776062c86ce6d957495a22bbe0fd4b73d9359a2efb8c1')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}
