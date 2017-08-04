  $ source "$TESTDIR/../helper.sh"

Adds after last entry if multiple are commented

  $ write_pacman_conf "#IgnorePkg = foo" "#IgnorePkg = bar"
  > ignore bat; cat "$PACMAN_CONF"
  #IgnorePkg = foo
  #IgnorePkg = bar
  IgnorePkg = bat
