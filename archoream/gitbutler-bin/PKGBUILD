# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
pkgname=gitbutler-bin
pkgver=0.12.4
pkgrel=1
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk' 'gtk3')
license=('FSL-1.0-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-994/linux/$CARCH/git-butler_${pkgver}_amd64.deb")
sha256sums=('892f4f0fa4df393e3a759ada8214ee6b2066cde5136b5683597089c0983f7e1b')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
}

