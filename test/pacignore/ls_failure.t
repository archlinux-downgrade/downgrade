  $ source "$TESTDIR/../helper_pacignore.sh"

Check list failure with invalid configuration file

  $ PACMAN_CONF_TEST="$(write_pacman_conf "IgnorePkg = foo bar")"
  > pacignore "ls" "--pacman-conf" "$PACMAN_CONF_TEST" 2>/dev/null
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF_TEST"
  exit_code=1
  IgnorePkg = foo bar
