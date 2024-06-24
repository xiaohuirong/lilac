# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.12.5
pkgrel=1
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-1004/linux/$CARCH/git-butler_${pkgver}_amd64.deb")
sha256sums=('7cf4cdd980327df36d1657773a73b35f70126d13b4af9c09d6ea2cceca4d8442')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}

