# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.12.26
pkgrel=1
_pkgvernum=1301
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-${_pkgvernum}/linux/$CARCH/git-butler_${pkgver}_amd64.deb")
sha256sums=('a2b97d5287a79630c44b72a48712510dbe0b7ed06c219114b9eb392229e1fbf2')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}

