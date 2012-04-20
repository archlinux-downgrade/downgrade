# Author: Patrick Brisbin <pbrisbin@gmail.com>
pkgname=downgrade
pkgver=2.0.4
pkgrel=1
pkgdesc="Bash script for downgrading one or more packages to a version in your cache or the A.R.M."
arch=('any')
url="http://pbrisbin.com/posts/$pkgname/"
license="GPL" 
source=($pkgname)

build() { 
  install -D -m755 ./$pkgname $pkgdir/usr/bin/$pkgname || return 1
}
md5sums=('8352abfb8aede2f46964e501284de04e')
