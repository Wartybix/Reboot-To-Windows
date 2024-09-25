# Maintainer: Wartybix <34974060+Wartybix@users.noreply.github.com>
pkgname='reboot-to-windows'
pkgver=1.1.r4.g629c49e
pkgrel=1
pkgdesc="Application to quickly reboot to Windows from Linux, bypassing the boot menu."
arch=('x86_64')
url="https://github.com/Wartybix/Reboot-To-Windows"
license=('GPL')
depends=('polkit', 'efibootmgr')
makedepends=()
optdepends=('qt5-tools: Reboot screen support for KDE')
source=("${_pkgname}-${_pkgver}.tar.gz::${url}/archive/${_pkgver}.tar.gz"
sha256sums=('e94ff36028585ac504fa20c6bfd35e78ba3721bc2b050b156fd26ba8f4439c95')

pkgver() {
	cd "$pkgname-$pkgver"
	git describe --long --tags --abbrev=7 | sed 's/\([^-]*-g\)/r\1/;s/-/./g'
}

prepare() {
	cd "$pkgname-$pkgver"
	patch -p1 -i "$srcdir/$pkgname-$pkgver.patch"
}

build() {
	cd "$pkgname-$pkgver"
	./configure --prefix=/usr
	make
}

check() {
	cd "$pkgname-$pkgver"
	make -k check
}

package() {
	cd "$pkgname-$pkgver"
	make DESTDIR="$pkgdir/" install
}
