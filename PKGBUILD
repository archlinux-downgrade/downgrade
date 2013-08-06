# Author: Patrick Brisbin <pbrisbin@gmail.com>
pkgname=downgrade
pkgver=3.4
pkgrel=1
pkgdesc="Bash script for downgrading one or more packages to a version in your cache or the A.R.M."
arch=('any')
url="https://github.com/pbrisbin/downgrade"
license="GPL" 
source=($pkgname lt.po)
optdepends=('sudo: for installation via sudo')

package() {
  local locales="lt nb nn" # space separated

  for i in $locales; do
    mkdir -p "$pkgdir/usr/share/locale/$i/LC_MESSAGES/"
    msgfmt "$srcdir/$i.po" -o "$pkgdir/usr/share/locale/$i/LC_MESSAGES/downgrade.mo"
  done

  install -D -m755 $pkgname "$pkgdir/usr/bin/$pkgname"
}
md5sums=('ca57a7988ca6755dfa827fbe2b0d5690'
         '91b4410d1a7c6c71e74477ea56443404')
