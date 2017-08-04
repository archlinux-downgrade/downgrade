  $ source "$TESTDIR/../helper.sh"

Adds the package to existing IgnorePkg entries

  $ write_pacman_conf "OptionBefore" "IgnorePkg = foo bar" "OptionAfter"
  > ignore baz; cat "$PACMAN_CONF"
  OptionBefore
  IgnorePkg = foo bar baz
  OptionAfter
