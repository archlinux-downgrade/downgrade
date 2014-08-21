  $ source "$TESTDIR/helper.sh"

Outputs its arguments as a numbered list

  $ present_packages foo bar baz
  Available packages:
  
     1) foo
     2) bar
     3) baz
  
  select a package by number:  (no-eol)

Retuns 1 if no arguments were given

  $ present_packages
  [1]
