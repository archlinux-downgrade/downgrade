  $ source "$TESTDIR/../helper.sh"
  > PACMAN_LOG=/dev/null

It adds the term and package to global arrays if successful

  $ touch "$TMP/foo.pkg" "$TMP/foo.pkg"
  > DOWNGRADE_FROM_CACHE=1
  > search_cache() { printf "%s\n" "$TMP/foo.pkg" "$TMP/foo.pkg"; }
  > FZF_CHOICE=1
  > main foo 2>/dev/null; exit_code=$?
  > echo
  > printf "ignore: %s\n" "${to_ignore[@]}"
  > printf "install: %s\n" "${to_install[@]}"
  > printf "exit code: %s\n" "$exit_code"
  
  ignore: foo
  install: /tmp/cramtests-*/tmp/foo.pkg (glob)
  exit code: 0
