  $ source "$TESTDIR/../helper.sh"

Prints the element for the given choice

  $ echo 1 | read_selection foo bar baz
  foo (no-eol)

  $ echo 2 | read_selection foo bar baz
  bar (no-eol)

  $ echo 3 | read_selection foo bar baz
  baz (no-eol)
