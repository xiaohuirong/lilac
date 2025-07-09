# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
# Maintainer: Daniele Paolella <danpaolella@gmail.com>
pkgname=gitbutler-bin
pkgver=0.15.2
pkgrel=1
_pkgvernum=2186
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte "
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk-4.1' 'gtk3')
license=('LicenseRef-FSL-1.1-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-${_pkgvernum}/linux/$CARCH/GitButler_${pkgver}_amd64.deb"
        "LICENSE.md")
sha256sums=('2cb9ddfb54f8c8c333530dfa02270c09cc5b0e3e6ed89a6a1fa8113739d85b6a'
            '2a3154bf44e0b219014291b96249082f3305844a1d73796741468c8128c2829e')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
	install -Dm644 LICENSE.md "$pkgdir/usr/share/licenses/$pkgname/LICENSE.md"
}
