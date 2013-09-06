# Author: Patrick Brisbin <pbrisbin@gmail.com>
pkgname=downgrade
pkgver=4.2.1
pkgrel=1
pkgdesc="Bash script for downgrading one or more packages to a version in your cache or the A.R.M."
arch=('any')
url="https://github.com/pbrisbin/$pkgname"
license="GPL" 
source=($pkgname $pkgname.8 lt.po nb.po nn.po)
optdepends=('sudo: for installation via sudo')

package() {
  local locales="lt nb nn" # space separated

  for i in $locales; do
    mkdir -p "$pkgdir/usr/share/locale/$i/LC_MESSAGES/"
    msgfmt "$srcdir/$i.po" -o "$pkgdir/usr/share/locale/$i/LC_MESSAGES/$pkgname"
  done

  install -Dm755 $pkgname     "$pkgdir/usr/bin/$pkgname"
  install -Dm644 ${pkgname}.8 "$pkgdir/usr/share/man/man8/${pkgname}.8"
}
md5sums=('bc7f8aea1becb16c3ded2535724b9370'
         '6317330c414bf72fb4ff86bbb0c44f73'
         '06a79a5c7a033689afa7d3fa3a7160b0'
         '75a4b3e892cc91d9d256e5fadea34382'
         'cdffd10b833014d945f1542a9e706dd5')
