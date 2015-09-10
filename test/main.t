  $ source "$TESTDIR/helper.sh"
  > sort_packages() { cat; } # no-op

It does nothing if there are no candidates

  $ search_packages() { :; }
  > main foo; printf "exit code: %s\n" "$?"
  > printf "%s\n" "${#to_ignore[@]}"
  > printf "%s\n" "${#to_install[@]}"
  exit code: 1
  0
  0

It does nothing on an invalid choice

  $ search_packages() { printf "%s\n" foo foo foo; }
  > main foo < <(echo -1); printf "\nexit code: %s\n" "$?"
  > printf "%s\n" "${#to_ignore[@]}"
  > printf "%s\n" "${#to_install[@]}"
  Available packages:
  
     1) foo
     2) foo
     3) foo
  
  select a package by number: 
  exit code: 1
  0
  0

It does nothing on non-presence/failed download

  $ download_when_remote() { return 1; }
  > main foo < <(echo 2); printf "\nexit code: %s\n" "$?"
  > printf "%s\n" "${#to_ignore[@]}"
  > printf "%s\n" "${#to_install[@]}"
  Available packages:
  
     1) foo
     2) foo
     3) foo
  
  select a package by number: foo
  
  exit code: 1
  0
  0

It adds the term and package to global arrays if successful

  $ touch "$TMP/foo.pkg"
  > search_packages() { printf "%s\n" "$TMP/foo.pkg"; }
  > download_when_remote() { printf "%s" "$1"; }
  > main foo < <(echo 1); printf "\nexit code: %s\n" "$?"
  > printf "%s\n" "${to_ignore[@]}" "${to_install[@]}"
  Available packages:
  
     1) foo.pkg (local)
  
  select a package by number: /tmp/cramtests-*/tmp/foo.pkg (glob)
  
  exit code: 0
  foo
  /tmp/cramtests-*/tmp/foo.pkg (glob)
