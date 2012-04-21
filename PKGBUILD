# Author: Patrick Brisbin <pbrisbin@gmail.com>
pkgname=downgrade
pkgver=2.1
pkgrel=1
pkgdesc="Bash script for downgrading one or more packages to a version in your cache or the A.R.M."
arch=('any')
url="https://github.com/pbrisbin/downgrade"
license="GPL" 
source=($pkgname)

build() { 
  install -D -m755 ./$pkgname $pkgdir/usr/bin/$pkgname || return 1
}
md5sums=('2f630a90a7b7acc37270fa005f17ac49')
