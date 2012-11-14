# Author: Patrick Brisbin <pbrisbin@gmail.com>
pkgname=downgrade
pkgver=3.2
pkgrel=2
pkgdesc="Bash script for downgrading one or more packages to a version in your cache or the A.R.M."
arch=('any')
url="https://github.com/pbrisbin/downgrade"
license="GPL" 
source=($pkgname)
depends=('wget')
optdepends=('sudo: for installation via sudo')

package() {
  install -D -m755 $pkgname "$pkgdir/usr/bin/$pkgname"
}
md5sums=('ac3535408aff618712d3b3837dca3656')
