# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.12.24
pkgrel=1
_pkgvernum=1238
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-${_pkgvernum}/linux/$CARCH/git-butler_${pkgver}_amd64.deb")
sha256sums=('bdd2b3bae937f40d7807868ee94d87bfe49cc00435622a2bca317698fdfb2dbd')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}

