# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.12.1
pkgrel=1
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-966/linux/$CARCH/git-butler_${pkgver}_amd64.deb")
sha256sums=('befeaeacfddd795aac5883b3275104e95071e1f225cd2d99d47b267b9dd1544f')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}

