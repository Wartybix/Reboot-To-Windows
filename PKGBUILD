# Maintainer: Wartybix <34974060+Wartybix@users.noreply.github.com>
pkgname='reboot-to-windows'
pkgver=1.2
pkgrel=1
pkgdesc="Application to quickly reboot to Windows from Linux, bypassing the boot menu."
arch=('x86_64')
url="https://github.com/Wartybix/Reboot-To-Windows"
license=('GPL')
depends=()
makedepends=()
checkdepends=()
optdepends=()
provides=()
conflicts=()
replaces=()
backup=()
options=()
install=
changelog=
source=("$pkgname-$pkgver.tar.gz"
        "$pkgname-$pkgver.patch")
noextract=()
sha256sums=()
validpgpkeys=()

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
