  $ source "$TESTDIR/../helper.sh"

It does nothing on an invalid choice

  $ search_packages() { printf "%s\n" foo foo foo; }
  > main foo < <(echo -1); exit_code=$?
  > echo
  > printf "ignore: %s\n" "${to_ignore[@]}"
  > printf "install: %s\n" "${to_install[@]}"
  > printf "exit code: %s\n" "$exit_code"
  Available packages:
  
     1) foo
     2) foo
     3) foo
  
  select a package by number: 
  ignore: 
  install: 
  exit code: 1
