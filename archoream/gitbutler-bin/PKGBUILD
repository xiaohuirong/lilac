# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.14.32
pkgrel=1
_pkgvernum=2055
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk-4.1' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-${_pkgvernum}/linux/$CARCH/GitButler_${pkgver}_amd64.deb")
sha256sums=('94f403137b6ed7593826260448b51c9af386a1eefc142333e8966d8895748054')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}
