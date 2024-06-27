# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.12.6
pkgrel=1
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-1023/linux/$CARCH/git-butler_${pkgver}_amd64.deb")
sha256sums=('a3911e587ff1718da6f5ef02d6761dd86b8ae5c235e5b56fe47b3175ccb8c720')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}

