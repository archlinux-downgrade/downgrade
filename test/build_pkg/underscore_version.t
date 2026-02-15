  $ source "$TESTDIR/../helper.sh"
  > mkdir -p "$TMP/build_test"
  > cd "$TMP/build_test"
  > touch PKGBUILD

Mock git, makepkg and su
  $ git() { return 0; }
  > makepkg() { echo "Finished making: pkg 1.2_3-1 (any)" > makepkg.log; touch pkg-1.2_3-1-any.pkg.tar.gz; }
  > su() { eval "$4"; }
  > export -f git makepkg su

It builds package with underscore in version
  $ item="$TMP/build_test/pkg-1.2_3-abcdef-any.gitpkg.tar.gz"
  > build_pkg "$item"
  > cat new_to_install.downgrade | tr '\0' '\n'
  /tmp/*/build_test/pkg-1.2_3-1-any.pkg.tar.gz (glob)
