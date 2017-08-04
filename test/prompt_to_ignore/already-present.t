  $ source "$TESTDIR/../helper.sh"

Does nothing when already present

  $ write_pacman_conf "IgnorePkg = foo bar baz"
  > ignore foo; cat "$PACMAN_CONF"
  IgnorePkg = foo bar baz
