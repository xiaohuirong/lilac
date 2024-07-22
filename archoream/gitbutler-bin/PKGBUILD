# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.12.13
pkgrel=1
_pkgvernum=1102
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-${_pkgvernum}/linux/$CARCH/git-butler_${pkgver}_amd64.deb")
sha256sums=('ef8e89bf5a0978a0d333af58dddf98f7940712c0ba4d395951d4d22c3014049c')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}

