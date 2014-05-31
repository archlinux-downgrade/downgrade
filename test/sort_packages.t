  $ source "$TESTDIR/helper.sh"

Omits testing and sorts by package/version descending

  $ cat | sort_packages << EOF
  > /tmp/pacman/cache/foo-2.0.pkg.tar.gz
  > /tmp/pacman/cache/foo-1.0.pkg.tar.gz
  > /tmp/pacman/cache/foo-3.5.pkg.tar.xz
  > /tmp/pacman/cache/foo-1.1.pkg.tar.gz
  > http://repo-arm-download.archlinuxcn.org/testing/os/x86_64/foo-4.0-1-x86_64.pkg.tar.xz
  > http://repo-arm-download.archlinuxcn.org/extra/os/x86_64/foo-4.0-1-x86_64.pkg.tar.xz
  > http://repo-arm-download.archlinuxcn.org/extra/os/x86_64/foo-1.2.1-1-x86_64.pkg.tar.xz
  > EOF
  http://repo-arm-download.archlinuxcn.org/extra/os/x86_64/foo-4.0-1-x86_64.pkg.tar.xz
  /tmp/pacman/cache/foo-3.5.pkg.tar.xz
  /tmp/pacman/cache/foo-2.0.pkg.tar.gz
  http://repo-arm-download.archlinuxcn.org/extra/os/x86_64/foo-1.2.1-1-x86_64.pkg.tar.xz
  /tmp/pacman/cache/foo-1.1.pkg.tar.gz
  /tmp/pacman/cache/foo-1.0.pkg.tar.gz
