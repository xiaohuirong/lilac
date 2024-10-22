# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.13.4
pkgrel=1
_pkgvernum=1370
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-${_pkgvernum}/linux/$CARCH/git-butler_${pkgver}_amd64.deb")
sha256sums=('055c1d5a3d5fe135042c8d21407e4f35f99b4db18a0a8548f008aae09d7ef9ca')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}

