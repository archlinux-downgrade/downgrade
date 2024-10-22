  $ source "$TESTDIR/../helper.sh"
  > PACMAN_LOG=/dev/null

It doesn't present packages when there's only one choice

  $ touch "$TMP/foo.pkg"
  > DOWNGRADE_IGNORE=always
  > DOWNGRADE_FROM_CACHE=1
  > search_cache() { printf "%s\n" "$TMP/foo.pkg"; }
  > main foo 2>/tmp/downgradechoicelog; exit_code=$?
  > printf "ignore: %s\n" "${to_ignore[@]}"
  > printf "install: %s\n" "${to_install[@]}"
  > printf "exit code: %s\n" "$exit_code"
  ignore: foo
  install: /tmp/cramtests-*/tmp/foo.pkg (glob)
  exit code: 0
