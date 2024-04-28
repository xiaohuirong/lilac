# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.11.5
pkgrel=1
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-864/linux/$CARCH/git-butler_${pkgver}_amd64.deb")
sha256sums=('ef41fcc606dd66d8d2cb8f16f5abad6947e4cc2ce8d3ceca0f0fce22b816f946')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}
