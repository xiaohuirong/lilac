# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.12.7
pkgrel=1
_pkgvernum=1029
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-${_pkgvernum}/linux/$CARCH/git-butler_${pkgver}_amd64.deb")
sha256sums=('92f1ecd6f92b601935c3cb7b9e5be87d71842bc1abf2f24b4389ef5555842440')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}

