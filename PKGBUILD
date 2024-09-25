# Maintainer: Wartybix <34974060+Wartybix@users.noreply.github.com>
pkgname='reboot-to-windows'
_pkgname='Reboot-To-Windows'
pkgver=1.1
pkgrel=1
pkgdesc="Application to quickly reboot to Windows from Linux, bypassing the boot menu."
arch=('x86_64')
url="https://github.com/Wartybix/Reboot-To-Windows"
license=('GPL')
depends=('polkit' 'efibootmgr')
makedepends=()
optdepends=('qt5-tools: Reboot screen support for KDE')
source=("${pkgname}-${pkgver}.tar.gz::${url}/archive/${pkgver}.tar.gz")
sha256sums=('e94ff36028585ac504fa20c6bfd35e78ba3721bc2b050b156fd26ba8f4439c95')

build() {
	cd "$_pkgname-$pkgver"
	make
}

package() {
	cd "$_pkgname-$pkgver"
	install -Dm755 reboot-to-windows.sh "$pkgdir/usr/bin/reboot-to-windows"
	install -Dm644 README.md "$pkgdir/usr/share/doc/$pkgname"
	install -Dm644 wartybix-windows-root.desktop "$pkgdir/usr/share/applications/$pkgname.desktop"
	install -Dm644 windows_logo.png "$pkgdir/usr/share/$pkgname/windows_logo.png"
}
