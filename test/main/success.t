  $ source "$TESTDIR/../helper.sh"
  > PACMAN_LOG=/dev/null

It adds the term and package to global arrays if successful

  $ touch "$TMP/foo.pkg" "$TMP/foo.pkg"
  > search_packages() { printf "%s\n" "$TMP/foo.pkg" "$TMP/foo.pkg"; }
  > main foo < <(echo 1); exit_code=$?
  > echo
  > printf "ignore: %s\n" "${to_ignore[@]}"
  > printf "install: %s\n" "${to_install[@]}"
  > printf "exit code: %s\n" "$exit_code"
  Available packages:
  
     1)  foo          (local)
     2)  foo          (local)
  
  select a package by number: 
  ignore: foo
  install: /tmp/cramtests-*/tmp/foo.pkg (glob)
  exit code: 0
