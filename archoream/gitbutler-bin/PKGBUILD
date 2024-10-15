# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.13.1
pkgrel=1
_pkgvernum=1339
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-${_pkgvernum}/linux/$CARCH/git-butler_${pkgver}_amd64.deb")
sha256sums=('06a7586c3f12c6579936cf7b44eb7d57ed3c14e76de7e93fef782ad2b50e090f')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}

