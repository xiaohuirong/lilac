# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.14.15
pkgrel=1
_pkgvernum=1826
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk-4.1' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-${_pkgvernum}/linux/$CARCH/GitButler_${pkgver}_amd64.deb")
sha256sums=('0b91894d56fd2b80e62b1906bf2a951beec332b38639161ec4fb63ea86b68df4')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}
