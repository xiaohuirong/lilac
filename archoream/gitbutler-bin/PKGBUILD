# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.14.0
pkgrel=1
_pkgvernum=1525
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk-4.1' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-${_pkgvernum}/linux/$CARCH/GitButler_${pkgver}_amd64.deb")
sha256sums=('103cd15272bf59cfc5c215682f691019ee55130786b0f1ae5699a9ea59c42dfe')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}
