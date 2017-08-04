  $ source "$TESTDIR/../helper.sh"

Handles whitespace accordingly

  $ write_pacman_conf "OptionBefore" "  IgnorePkg = foo bar" "OptionAfter"
  > ignore baz; cat "$PACMAN_CONF"
  OptionBefore
    IgnorePkg = foo bar baz
  OptionAfter
