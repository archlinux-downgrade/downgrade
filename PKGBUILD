# Author: Patrick Brisbin <pbrisbin@gmail.com>
pkgname=downgrade
pkgver=3.0
pkgrel=1
pkgdesc="Bash script for downgrading one or more packages to a version in your cache or the A.R.M."
arch=('any')
url="https://github.com/pbrisbin/downgrade"
license="GPL" 
source=($pkgname)

build() { 
  install -D -m755 ./$pkgname $pkgdir/usr/bin/$pkgname || return 1
}
md5sums=('51bd894bce8d69dc50b96fb1a14d8391')
