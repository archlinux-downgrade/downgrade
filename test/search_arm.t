  $ source "$TESTDIR/helper.sh"

Searching the A.R.M.

  $ ARCH=x86_64
  > NOCACHE=1 search_packages 'xorg-twm'
  https://archive.archlinux.org/packages/x/xorg-twm/xorg-twm-1.0.7-1-x86_64.pkg.tar.xz
  https://archive.archlinux.org/packages/x/xorg-twm/xorg-twm-1.0.8-1-x86_64.pkg.tar.xz
  https://archive.archlinux.org/packages/x/xorg-twm/xorg-twm-1.0.8-2-x86_64.pkg.tar.xz
  https://archive.archlinux.org/packages/x/xorg-twm/xorg-twm-1.0.8-3-x86_64.pkg.tar.xz
  https://archive.archlinux.org/packages/x/xorg-twm/xorg-twm-1.0.9-1-x86_64.pkg.tar.xz

Searching the A.R.M. for other architectures

  $ ARCH=i686
  > NOCACHE=1 search_packages 'xorg-twm'
  https://archive.archlinux.org/packages/x/xorg-twm/xorg-twm-1.0.7-1-i686.pkg.tar.xz
  https://archive.archlinux.org/packages/x/xorg-twm/xorg-twm-1.0.8-1-i686.pkg.tar.xz
  https://archive.archlinux.org/packages/x/xorg-twm/xorg-twm-1.0.8-2-i686.pkg.tar.xz
  https://archive.archlinux.org/packages/x/xorg-twm/xorg-twm-1.0.8-3-i686.pkg.tar.xz
  https://archive.archlinux.org/packages/x/xorg-twm/xorg-twm-1.0.9-1-i686.pkg.tar.xz
