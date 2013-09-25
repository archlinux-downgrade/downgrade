  $ source "$TESTDIR/helper.sh"
  > install_pkg() { echo "install $1"; }

Install selection

  $ echo '2' | prompt_to_install foo bar baz
  Available packages:
  
     1) foo
     2) bar
     3) baz
  
  select a package by number: 
  install bar

Invalid choice

  $ echo '-1' | prompt_to_install foo bar baz
  Available packages:
  
     1) foo
     2) bar
     3) baz
  
  select a package by number: 
  [1]

  $ echo '' | prompt_to_install foo bar baz
  Available packages:
  
     1) foo
     2) bar
     3) baz
  
  select a package by number: 
  [1]

  $ echo 'x' | prompt_to_install foo bar baz
  Available packages:
  
     1) foo
     2) bar
     3) baz
  
  select a package by number: 
  [1]

No results

  $ prompt_to_install
  [1]
