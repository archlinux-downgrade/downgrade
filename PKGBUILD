# Author: Patrick Brisbin <pbrisbin@gmail.com>
pkgname=downgrade
pkgver=5.1
pkgrel=1
pkgdesc="Bash script for downgrading one or more packages to a version in your cache or the A.R.M."
arch=('any')
url="https://github.com/pbrisbin/$pkgname"
license="GPL"
optdepends=('sudo: for installation via sudo')
source=("$pkgname-$pkgver.tar.gz::https://github.com/pbrisbin/$pkgname/archive/v$pkgver.tar.gz")
md5sums=('e2519b83253cc04eb4c5fba9d3b97215')


package() {
  cd $pkgname-$pkgver

  local po_file

  for po_file in *.po; do
    locale="${po_file%.po}"

    mkdir -p "$pkgdir/usr/share/locale/$locale/LC_MESSAGES/"
    msgfmt "$po_file" -o "$pkgdir/usr/share/locale/$locale/LC_MESSAGES/$pkgname.mo"
  done

  install -Dm755 $pkgname        "$pkgdir/usr/bin/$pkgname"
  install -Dm644 ${pkgname}.8    "$pkgdir/usr/share/man/man8/${pkgname}.8"
  install -Dm644 bash_completion "$pkgdir/etc/bash_completion.d/downgrade"
  install -Dm644 zsh_completion  "$pkgdir/usr/share/zsh/site-functions/_downgrade"
}
