  $ source "$TESTDIR/helper.sh"
  > as_root() { "$@"; } # just do it
  > pacman() { echo "pacman $*"; }

Installing local file

  $ touch './foo.pkg.tar.gz'
  > install_pkg './foo.pkg.tar.gz'
  pacman -U ./foo.pkg.tar.gz

Installing remote package

  $ install_pkg 'http://repo-arm-download.archlinuxcn.org/extra/os/x86_64/xorg-twm-1.0.8-1-x86_64.pkg.tar.xz'
  pacman -U xorg-twm-1.0.8-1-x86_64.pkg.tar.xz

Invalid input

  $ install_pkg 'flimadyfloo'
  [1]

  $ install_pkg ''
  [1]
