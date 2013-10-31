# Author: Patrick Brisbin <pbrisbin@gmail.com>
pkgname=downgrade
pkgver=5.0.0
pkgrel=1
pkgdesc="Bash script for downgrading one or more packages to a version in your cache or the A.R.M."
arch=('any')
url="https://github.com/pbrisbin/$pkgname"
license="GPL" 
source=(
  $pkgname
  ${pkgname}.8
  bash_completion
  zsh_completion
  fr.po
  lt.po
  nb.po
  nn.po
)
optdepends=('sudo: for installation via sudo')

package() {
  local po_file

  for po_file in *.po; do
    locale="${po_file%.po}"

    mkdir -p "$pkgdir/usr/share/locale/$locale/LC_MESSAGES/"
    msgfmt "$po_file" -o "$pkgdir/usr/share/locale/$locale/LC_MESSAGES/$pkgname"
  done

  install -Dm755 $pkgname        "$pkgdir/usr/bin/$pkgname"
  install -Dm644 ${pkgname}.8    "$pkgdir/usr/share/man/man8/${pkgname}.8"
  install -Dm644 bash_completion "$pkgdir/etc/bash_completion.d/downgrade"
  install -Dm644 zsh_completion  "$pkgdir/usr/share/zsh/site-functions/_downgrade"
}
md5sums=('1298f90167d205e87ea7121d8e7ac050'
         'dfa9884fa1e844a20651f6e3f7c3b0e1'
         'b8f59170b6a14dcef429199bfa341efc'
         '7dfcbe3c86f264e0cb2f3ad24be6e082'
         '3c9edea24e01627bbf0e7d8c13c97585'
         'a4c2c7eb45e75b6d28579d95bd37da45'
         '80b5d7748a3a6c8d7dfa4768a37cf961'
         '738166fd54119d2878c030c253f426f0')
