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

Searching the A.R.M. for -any packages

  $ NOCACHE=1 search_packages 'ansible'
  https://archive.archlinux.org/packages/a/ansible/ansible-1.4.4-4-any.pkg.tar.xz
  https://archive.archlinux.org/packages/a/ansible/ansible-1.4.5-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/a/ansible/ansible-1.5-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/a/ansible/ansible-1.5-2-any.pkg.tar.xz
  https://archive.archlinux.org/packages/a/ansible/ansible-1.5.3-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/a/ansible/ansible-1.5.4-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/a/ansible/ansible-1.5.5-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/a/ansible/ansible-1.6-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/a/ansible/ansible-1.6.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/a/ansible/ansible-1.6.10-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/a/ansible/ansible-1.6.2-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/a/ansible/ansible-1.6.5-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/a/ansible/ansible-1.6.6-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/a/ansible/ansible-1.6.8-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/a/ansible/ansible-1.6.9-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/a/ansible/ansible-1.7-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/a/ansible/ansible-1.7.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/a/ansible/ansible-1.7.1-2-any.pkg.tar.xz
  https://archive.archlinux.org/packages/a/ansible/ansible-1.7.1-3-any.pkg.tar.xz
  https://archive.archlinux.org/packages/a/ansible/ansible-1.7.2-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/a/ansible/ansible-1.8.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/a/ansible/ansible-1.8.1-2-any.pkg.tar.xz
  https://archive.archlinux.org/packages/a/ansible/ansible-1.8.2-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/a/ansible/ansible-1.8.2-2-any.pkg.tar.xz
  https://archive.archlinux.org/packages/a/ansible/ansible-1.8.4-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/a/ansible/ansible-1.9.0.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/a/ansible/ansible-1.9.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/a/ansible/ansible-1.9.1-2-any.pkg.tar.xz
  https://archive.archlinux.org/packages/a/ansible/ansible-1.9.2-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/a/ansible/ansible-1.9.3-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/a/ansible/ansible-1.9.4-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/a/ansible/ansible-2.0.0.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/a/ansible/ansible-2.0.0.2-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/a/ansible/ansible-2.0.0.2-2-any.pkg.tar.xz
