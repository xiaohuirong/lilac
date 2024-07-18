# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.12.12
pkgrel=1
_pkgvernum=1093
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-${_pkgvernum}/linux/$CARCH/git-butler_${pkgver}_amd64.deb")
sha256sums=('02a14a23167cad64cc595c12cf05d5659550f6fa754f8c082a3d9f485fbdd14a')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}

