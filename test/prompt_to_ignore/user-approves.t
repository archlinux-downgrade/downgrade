  $ source "$TESTDIR/../helper.sh"

Does something when told yes

  $ write_pacman_conf "IgnorePkg = foo bar"
  > ignore baz >/dev/null
  > printf "%s\n" "exit_code=$?"
  > cat "$PACMAN_CONF"
  exit_code=1
  IgnorePkg = foo bar
