  $ source "$TESTDIR/../helper.sh"
  > mkdir -p "$TMP/build_test"
  > cd "$TMP/build_test"
  > touch PKGBUILD

Mock git, makepkg and su
  $ su() {
  >   local cmd
  >   while [[ $# -gt 0 ]]; do
  >     if [[ "$1" == "-c" ]]; then cmd="$2"; break; fi
  >     shift
  >   done
  >   case "$cmd" in
  >     *"makepkg -fs"*) touch "$TMP/build_test/pkg-1.2_3-1-any.pkg.tar.gz"; return 0 ;;
  >     git*) return 0 ;;
  >     "makepkg --packagelist") echo "$TMP/build_test/pkg-1.2_3-1-any.pkg.tar.gz" ;;
  >   esac
  > }
  > stat() { echo "testuser"; }
  > export -f su stat

It builds package with underscore in version
  $ item="$TMP/build_test/pkg-1.2_3-abcdef-any.gitpkg.tar.gz"
  > build_pkg "$item"
  > cat new_to_install.downgrade | tr '\0' '\n'
  /tmp/*/build_test/pkg-1.2_3-1-any.pkg.tar.gz (glob)
