  $ source "$TESTDIR/../helper.sh"

Does nothing when told no

  $ write_pacman_conf "IgnorePkg = foo bar"
  > echo n | prompt_to_ignore baz >/dev/null
  > cat "$PACMAN_CONF"
  IgnorePkg = foo bar
