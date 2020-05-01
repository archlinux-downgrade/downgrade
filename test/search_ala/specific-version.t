  $ source "$TESTDIR/../helper.sh"

Searching the A.L.A. for specific version

  $ DOWNGRADE_ARCH=x86_64
  > DOWNGRADE_FROM_ALA=1
  > search_packages 'xorg-twm' '=' '1.0.7'
  https://archive.archlinux.org/packages/x/xorg-twm/xorg-twm-1.0.7-1-x86_64.pkg.tar.xz

  $ search_packages 'xorg-twm' '>=' '1.0.8-1'
  https://archive.archlinux.org/packages/x/xorg-twm/xorg-twm-1.0.8-1-x86_64.pkg.tar.xz
  https://archive.archlinux.org/packages/x/xorg-twm/xorg-twm-1.0.8-2-x86_64.pkg.tar.xz
  https://archive.archlinux.org/packages/x/xorg-twm/xorg-twm-1.0.8-3-x86_64.pkg.tar.xz
  https://archive.archlinux.org/packages/x/xorg-twm/xorg-twm-1.0.9-1-x86_64.pkg.tar.xz

  $ search_packages 'xorg-twm' '<=' '1.0.8-3'
  https://archive.archlinux.org/packages/x/xorg-twm/xorg-twm-1.0.7-1-x86_64.pkg.tar.xz
  https://archive.archlinux.org/packages/x/xorg-twm/xorg-twm-1.0.8-1-x86_64.pkg.tar.xz
  https://archive.archlinux.org/packages/x/xorg-twm/xorg-twm-1.0.8-2-x86_64.pkg.tar.xz
  https://archive.archlinux.org/packages/x/xorg-twm/xorg-twm-1.0.8-3-x86_64.pkg.tar.xz

  $ search_packages 'xorg-twm' '>' '1.0.8-1'
  https://archive.archlinux.org/packages/x/xorg-twm/xorg-twm-1.0.8-2-x86_64.pkg.tar.xz
  https://archive.archlinux.org/packages/x/xorg-twm/xorg-twm-1.0.8-3-x86_64.pkg.tar.xz
  https://archive.archlinux.org/packages/x/xorg-twm/xorg-twm-1.0.9-1-x86_64.pkg.tar.xz

  $ search_packages 'xorg-twm' '<' '1.0.8-3'
  https://archive.archlinux.org/packages/x/xorg-twm/xorg-twm-1.0.7-1-x86_64.pkg.tar.xz
  https://archive.archlinux.org/packages/x/xorg-twm/xorg-twm-1.0.8-1-x86_64.pkg.tar.xz
  https://archive.archlinux.org/packages/x/xorg-twm/xorg-twm-1.0.8-2-x86_64.pkg.tar.xz
