  $ source "$TESTDIR/../helper.sh"

Adds to end of file if no entry present

  $ write_pacman_conf "[options]" "OtherOption"
  > ignore foo; cat "$PACMAN_CONF"
  [options]
  IgnorePkg = foo
  OtherOption
