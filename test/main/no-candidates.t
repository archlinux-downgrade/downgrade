  $ source "$TESTDIR/../helper.sh"
  > PACMAN_LOG=/dev/null

It does nothing if there are no candidates

  $ search_packages() { :; }
  > main foo; exit_code=$?
  > printf "ignore: %s\n" "${to_ignore[@]}"
  > printf "install: %s\n" "${to_install[@]}"
  > printf "exit code: %s\n" "$exit_code"
  ignore: 
  install: 
  exit code: 1
