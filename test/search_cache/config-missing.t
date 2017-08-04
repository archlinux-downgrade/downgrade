  $ source "$TESTDIR/../helper.sh"

With no config option set

  $ PACMAN_CACHE=$(mktemp -d)
  > touch \
  >   "$PACMAN_CACHE/foo-1.0.pkg.tar.gz" \
  >   "$PACMAN_CACHE/foo-2.0.pkg.tar.gz" \
  >   "$PACMAN_CACHE/foo-3.5.pkg.tar.xz" \
  >   "$PACMAN_CACHE/foo-1.1.pkg.tar.gz" \
  >   "$PACMAN_CACHE/foo-completions-1.1.pkg.tar.gz"
  > write_pacman_conf
  > DOWNGRADE_FROM_CACHE=1
  > search_packages 'foo-1' | sort
  /tmp/*/foo-1.0.pkg.tar.gz (glob)
  /tmp/*/foo-1.1.pkg.tar.gz (glob)
