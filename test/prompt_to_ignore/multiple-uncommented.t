  $ source "$TESTDIR/../helper.sh"

Affects the first uncommented entry if present

  $ write_pacman_conf "#IgnorePkg = foo" "#IgnorePkg = bar" "IgnorePkg = baz"
  > ignore bat; cat "$PACMAN_CONF"
  #IgnorePkg = foo
  #IgnorePkg = bar
  IgnorePkg = baz bat
