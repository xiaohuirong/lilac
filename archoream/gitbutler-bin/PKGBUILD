# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.13.10
pkgrel=1
_pkgvernum=1443
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-${_pkgvernum}/linux/$CARCH/GitButler_${pkgver}_amd64.deb")
sha256sums=('dee8da4a9d8d9f21890fa3f506eb28f8053140dc91d108b184fb2967f1d50d23')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}
