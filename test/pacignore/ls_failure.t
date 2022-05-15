  $ source "$TESTDIR/../helper_pacignore.sh"

Check list failure with invalid configuration file

  $ PACMAN_CONF_TEST="$(write_pacman_conf "IgnorePkg = foo bar")"
  > pacignore "ls" "-c" "$PACMAN_CONF_TEST"
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF_TEST"
  Error in reading pacman configuration file
  exit_code=1
  IgnorePkg = foo bar
