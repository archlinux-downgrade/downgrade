  $ source "$TESTDIR/../helper.sh"

Accepts multiple arguments

  $ write_pacman_conf "IgnorePkg = foo bar"
  > ignore baz bat quix; cat "$PACMAN_CONF"
  IgnorePkg = foo bar baz bat quix
