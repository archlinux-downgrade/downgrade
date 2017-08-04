  $ source "$TESTDIR/../helper.sh"

Adds to end of file if no entry present

  $ write_pacman_conf "Option" "OtherOption"
  > ignore foo; cat "$PACMAN_CONF"
  Option
  OtherOption
  IgnorePkg = foo
