# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.12.27
pkgrel=1
_pkgvernum=1312
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-${_pkgvernum}/linux/$CARCH/git-butler_${pkgver}_amd64.deb")
sha256sums=('212f629915c61603f679a6e5c09cc4d8d14eb046d4b3a74538c491ba1c9cbdf4')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}

