  $ source "$TESTDIR/../helper.sh"

Prints nothing and returns 1 for invalid selections

  $ echo '-1' | read_selection foo bar baz
  [1]

  $ echo '' | read_selection foo bar baz
  [1]

  $ echo 'x' | read_selection foo bar baz
  [1]
