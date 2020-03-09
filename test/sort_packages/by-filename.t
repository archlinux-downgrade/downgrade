  $ source "$TESTDIR/../helper.sh"

Prepends the filename for the sorting utility

  $ pacsort() { cat >&2; }
  > sort_packages >/dev/null << EOF
  > /tmp/pacman/cache/foo-1.1-any.pkg.tar.gz
  > http://repo-arm-download.archlinuxcn.org/extra/os/x86_64/foo-4.0-1-x86_64.pkg.tar.xz
  > EOF
  foo-1.1-any.pkg.tar.gz|/tmp/pacman/cache/foo-1.1-any.pkg.tar.gz
  foo-4.0-1-x86_64.pkg.tar.xz|http://repo-arm-download.archlinuxcn.org/extra/os/x86_64/foo-4.0-1-x86_64.pkg.tar.xz
