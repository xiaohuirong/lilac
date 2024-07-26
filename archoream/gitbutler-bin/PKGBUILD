# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.12.15
pkgrel=1
_pkgvernum=1114
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-${_pkgvernum}/linux/$CARCH/git-butler_${pkgver}_amd64.deb")
sha256sums=('a9aa5185ce5715dbdc08a094c789a3c747382f946889741db7a6b4251b1db4fb')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}

