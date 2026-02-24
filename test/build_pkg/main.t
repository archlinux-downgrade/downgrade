  $ source "$TESTDIR/../helper.sh"
  > su() {
  >   local cmd
  >   while [[ $# -gt 0 ]]; do
  >     if [[ "$1" == "-c" ]]; then cmd="$2"; break; fi
  >     shift
  >   done
  >   case "$cmd" in
  >     *"makepkg -fs"*) return "${MAKEPKG_FAIL:-0}" ;;
  >     git*) return 0 ;;
  >     "makepkg --packagelist") echo "/tmp/dummy-package-1.0-1-any.pkg.tar.zst" ;;
  >   esac
  > }
  > stat() { echo "testuser"; }
  > tmpdir=$(mktemp -d)
  > touch "$tmpdir/PKGBUILD"

Build success: makepkg --packagelist output is written to file

  $ cd "$tmpdir"
  > MAKEPKG_FAIL=0
  > build_pkg "$tmpdir/dummy-package-1.0-g123456-any.gitpkg.tar.gz"; exit_code=$?
  > tr '\0' '\n' < new_to_install.downgrade
  > printf "exit code: %s\n" "$exit_code"
  /tmp/dummy-package-1.0-1-any.pkg.tar.zst
  exit code: 0

Build failure: exits with 1 when makepkg -fs fails

  $ cd "$tmpdir"
  > rm -f new_to_install.downgrade
  > MAKEPKG_FAIL=1
  > export -f su stat build_pkg
  > export MAKEPKG_FAIL DOWNGRADE_ARCH
  > bash -c 'cd "'"$tmpdir"'" && build_pkg "'"$tmpdir"'/dummy-package-1.0-g123456-any.gitpkg.tar.gz"'
  [1]

  $ test ! -f "$tmpdir/new_to_install.downgrade" && echo "file not created"
  file not created

Non-git package: is written as-is

  $ cd "$tmpdir"
  > rm -f new_to_install.downgrade
  > build_pkg "/cache/dummy-package-1.0-1-any.pkg.tar.zst"
  > tr '\0' '\n' < new_to_install.downgrade
  /cache/dummy-package-1.0-1-any.pkg.tar.zst
