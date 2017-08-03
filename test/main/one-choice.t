  $ source "$TESTDIR/../helper.sh"
  > PACMAN_LOG=/dev/null

It doesn't present packages when there's only one choice

  $ touch "$TMP/foo.pkg"
  > search_packages() { printf "%s\n" "$TMP/foo.pkg"; }
  > main foo; exit_code=$?
  > printf "ignore: %s\n" "${to_ignore[@]}"
  > printf "install: %s\n" "${to_install[@]}"
  > printf "exit code: %s\n" "$exit_code"
  ignore: foo
  install: /tmp/cramtests-*/tmp/foo.pkg (glob)
  exit code: 0
