  $ source "$TESTDIR/../helper.sh"
  > PACMAN_LOG=/dev/null

It does nothing on an invalid choice

  $ search_packages() { printf "%s\n" foo foo foo; }
  > main foo < <(echo -1) 2>/dev/null; exit_code=$?
  > echo
  > printf "ignore: %s\n" "${to_ignore[@]}"
  > printf "install: %s\n" "${to_install[@]}"
  > printf "exit code: %s\n" "$exit_code"
  Available packages (foreign/aur):
  
    | 1) | foo |  |  |  | remote
    | 2) | foo |  |  |  | remote
    | 3) | foo |  |  |  | remote
  
  select a package by number: 
  ignore: 
  install: 
  exit code: 1
