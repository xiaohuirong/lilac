# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.13.2
pkgrel=1
_pkgvernum=1350
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-${_pkgvernum}/linux/$CARCH/git-butler_${pkgver}_amd64.deb")
sha256sums=('4e4883add89da6ecb45c966290f9b9c7bd2b5f05960f018663fa60d0cd81aff0')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}

