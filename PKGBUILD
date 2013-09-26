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
)
optdepends=('sudo: for installation via sudo')

package() {
  install -Dm755 $pkgname        "$pkgdir/usr/bin/$pkgname"
  install -Dm644 ${pkgname}.8    "$pkgdir/usr/share/man/man8/${pkgname}.8"
  install -Dm644 bash_completion "$pkgdir/etc/bash_completion.d/downgrade"
  install -Dm644 zsh_completion  "$pkgdir/usr/share/zsh/site-functions/_downgrade"
}
md5sums=('d153fe7167948bd52339147318e83c94'
         '5f753e77d8cade845057cd0f414bbb41'
         '93207b3ee72b385de20ef66c7079f56b'
         '974d73ca7455068beefca20b1255c970')
