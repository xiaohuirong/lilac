# Maintainer: Daniel Bowring <aur@daniel.bowring.email>
# Maintainer: Daniele Paolella <danpaolella@gmail.com>
pkgname=gitbutler-bin
pkgver=0.16.1
pkgrel=1
_pkgvernum=2393
pkgdesc="Version control client, backed by Git, powered by Tauri/Rust/Svelte"
arch=('x86_64')
url="https://gitbutler.com/"
depends=('libayatana-appindicator' 'webkit2gtk-4.1' 'gtk3')
license=('LicenseRef-FSL-1.1-MIT')
source=("https://releases.gitbutler.com/releases/release/${pkgver}-${_pkgvernum}/linux/$CARCH/GitButler_${pkgver}_amd64.deb"
        "LICENSE.md")
sha256sums=('fdd974e9df107fb86c0a35863e53847921362a1ca619cbd6890c163cab243ac5'
            '2a3154bf44e0b219014291b96249082f3305844a1d73796741468c8128c2829e')

package() {
	bsdtar -xf "$srcdir/data.tar.gz" -C "$pkgdir"
	install -Dm644 LICENSE.md "$pkgdir/usr/share/licenses/$pkgname/LICENSE.md"
}
