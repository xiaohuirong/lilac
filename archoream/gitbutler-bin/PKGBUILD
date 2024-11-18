# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.13.15
pkgrel=1
_pkgvernum=1494
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-${_pkgvernum}/linux/$CARCH/GitButler_${pkgver}_amd64.deb")
sha256sums=('1d475fbd556f66709589c79d18aa0c90825b31ee551c5cc49ccd3d4b0321b825')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}
