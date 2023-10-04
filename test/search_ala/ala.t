  $ source "$TESTDIR/../helper.sh"

Searching the A.L.A.

  $ DOWNGRADE_ARCH=x86_64
  > DOWNGRADE_FROM_ALA=1
  > search_ala 'xorg-twm'
  https://archive.archlinux.org/packages/x/xorg-twm/xorg-twm-1.0.7-1-x86_64.pkg.tar.xz
  https://archive.archlinux.org/packages/x/xorg-twm/xorg-twm-1.0.8-1-x86_64.pkg.tar.xz
  https://archive.archlinux.org/packages/x/xorg-twm/xorg-twm-1.0.8-2-x86_64.pkg.tar.xz
  https://archive.archlinux.org/packages/x/xorg-twm/xorg-twm-1.0.8-3-x86_64.pkg.tar.xz
  https://archive.archlinux.org/packages/x/xorg-twm/xorg-twm-1.0.9-1-x86_64.pkg.tar.xz

  $ DOWNGRADE_ARCH=i486
  > DOWNGRADE_ALA_URL="https://archive.archlinux32.org"
  > DOWNGRADE_FROM_ALA=1
  > search_ala 'xorg-twm'
  https://archive.archlinux32.org/packages/x/xorg-twm/xorg-twm-1.0.10-1.2-i486.pkg.tar.xz
  https://archive.archlinux32.org/packages/x/xorg-twm/xorg-twm-1.0.10-2.0-i486.pkg.tar.zst
  https://archive.archlinux32.org/packages/x/xorg-twm/xorg-twm-1.0.11-1.0-i486.pkg.tar.zst

  $ DOWNGRADE_ARCH=i686
  > DOWNGRADE_ALA_URL="https://archive.archlinux32.org"
  > DOWNGRADE_FROM_ALA=1
  > search_ala 'xorg-twm'
  https://archive.archlinux32.org/packages/x/xorg-twm/xorg-twm-1.0.9-1-i686.pkg.tar.xz
  https://archive.archlinux32.org/packages/x/xorg-twm/xorg-twm-1.0.10-1.0-i686.pkg.tar.xz
  https://archive.archlinux32.org/packages/x/xorg-twm/xorg-twm-1.0.10-1.1-i686.pkg.tar.xz
  https://archive.archlinux32.org/packages/x/xorg-twm/xorg-twm-1.0.10-1.2-i686.pkg.tar.xz
  https://archive.archlinux32.org/packages/x/xorg-twm/xorg-twm-1.0.10-1.3-i686.pkg.tar.xz
  https://archive.archlinux32.org/packages/x/xorg-twm/xorg-twm-1.0.10-2.0-i686.pkg.tar.zst
  https://archive.archlinux32.org/packages/x/xorg-twm/xorg-twm-1.0.11-1.0-i686.pkg.tar.zst

  $ DOWNGRADE_ARCH=pentium4
  > DOWNGRADE_ALA_URL="https://archive.archlinux32.org"
  > DOWNGRADE_FROM_ALA=1
  > search_ala 'xorg-twm'
  https://archive.archlinux32.org/packages/x/xorg-twm/xorg-twm-1.0.10-1.2-pentium4.pkg.tar.xz
  https://archive.archlinux32.org/packages/x/xorg-twm/xorg-twm-1.0.10-1.3-pentium4.pkg.tar.xz
  https://archive.archlinux32.org/packages/x/xorg-twm/xorg-twm-1.0.10-2.0-pentium4.pkg.tar.zst
  https://archive.archlinux32.org/packages/x/xorg-twm/xorg-twm-1.0.11-1.0-pentium4.pkg.tar.zst
