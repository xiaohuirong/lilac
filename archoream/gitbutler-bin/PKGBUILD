# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.11.7
pkgrel=1
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-889/linux/$CARCH/git-butler_${pkgver}_amd64.deb")
sha256sums=('c658ded2c8812cbcf9b6594f9ba4b400a0eb731c5ee3caf893f482ae763219f1')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}

