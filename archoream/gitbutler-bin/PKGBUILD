# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.14.27
pkgrel=1
_pkgvernum=2026
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk-4.1' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-${_pkgvernum}/linux/$CARCH/GitButler_${pkgver}_amd64.deb")
sha256sums=('70455a0b86c689c4e45a9630fdf0bd3fbcfac5475b8582d047a75557cd6c24dc')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}
