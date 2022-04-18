  $ source "$TESTDIR/../helper_pacignore.sh"

Check add failure with existing IgnorePkg entry

  $ PACMAN_CONF_TEST="$(write_pacman_conf "[options]" "IgnorePkg = foo bar")"
  > fakeroot pacignore "add" "--pacman-conf" "$PACMAN_CONF_TEST" "bar" 2>/dev/null
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF_TEST"
  exit_code=1
  [options]
  IgnorePkg = foo bar
