# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.11.1
pkgrel=1
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-814/linux/$CARCH/git-butler_${pkgver}_amd64.deb")
sha256sums=('ef9c474d652df1f358c6ddb094c1590e03e0af8c39e4420fc5ab36cb1d46147b')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}
