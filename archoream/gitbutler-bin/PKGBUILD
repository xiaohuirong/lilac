# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.11.6
pkgrel=1
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-881/linux/$CARCH/git-butler_${pkgver}_amd64.deb")
sha256sums=('a47a021872f65f2d130a89968dc94a2b2fd3be55f00f702f16a7acd57e78c0cd')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}

