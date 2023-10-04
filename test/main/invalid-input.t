  $ source "$TESTDIR/../helper.sh"
  > PACMAN_LOG=/dev/null

It returns error messages given invalid input

  $ DOWNGRADE_FROM_ALA=1
  > main 'foo|bar'; exit_code=$?
  > printf "ignore: %s\n" "${to_ignore[@]}"
  > printf "install: %s\n" "${to_install[@]}"
  > printf "exit code: %s\n" "$exit_code"
  Failed to parse A.L.A.
  No results found
  Unable to downgrade foo|bar
  ignore: 
  install: 
  exit code: 1

  $ search_ala() { :; }
  > search_cache() { :; }
  > main 'foo/bar'; exit_code=$?
  > printf "ignore: %s\n" "${to_ignore[@]}"
  > printf "install: %s\n" "${to_install[@]}"
  > printf "exit code: %s\n" "$exit_code"
  Failed to parse previously installed packages
  No results found
  Unable to downgrade foo/bar
  ignore: 
  install: 
  exit code: 1
