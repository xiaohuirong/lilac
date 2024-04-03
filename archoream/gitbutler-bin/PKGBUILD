# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.10.28
pkgrel=1
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-764/linux/$CARCH/git-butler_${pkgver}_amd64.deb")
sha256sums=('276a8bad89df78481dbb9082f9bb167eed475294fa337c0267ad85a5db8321ba')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}
