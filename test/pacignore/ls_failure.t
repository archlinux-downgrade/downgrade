  $ source "$TESTDIR/../helper_pacignore.sh"

Check list failure with invalid configuration file

  $ PACMAN_CONF="$(write_pacman_conf "IgnorePkg = foo bar")"
  > pacignore ls -c "$PACMAN_CONF"
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF"
  Error in reading pacman configuration file
  exit_code=1
  IgnorePkg = foo bar
