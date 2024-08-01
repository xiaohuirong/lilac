# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.12.16
pkgrel=1
_pkgvernum=1129
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-${_pkgvernum}/linux/$CARCH/git-butler_${pkgver}_amd64.deb")
sha256sums=('e0fbe476a7232c7c5bba13b2045be31c2c5fba1133736430d2879b97bb6f3e23')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}

