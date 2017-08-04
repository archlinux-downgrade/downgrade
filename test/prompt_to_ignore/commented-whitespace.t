  $ source "$TESTDIR/../helper.sh"

Handles whitespace accordingly

  $ write_pacman_conf "#  IgnorePkg ="
  > ignore foo; cat "$PACMAN_CONF"
  #  IgnorePkg =
  IgnorePkg = foo
