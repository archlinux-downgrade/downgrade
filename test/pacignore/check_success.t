  $ source "$TESTDIR/../helper_pacignore.sh"

Test successful check

  $ PACMAN_CONF_TEST="$(write_pacman_conf "[options]" "IgnorePkg = foo bar")"
  > pacignore "check" "-c" "$PACMAN_CONF_TEST" "foo"
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF_TEST"
  exit_code=0
  [options]
  IgnorePkg = foo bar

  $ PACMAN_CONF_TEST="$(write_pacman_conf "[options]" "IgnorePkg = foo bar")"
  > pacignore "check" "-c" "$PACMAN_CONF_TEST" "bar"
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF_TEST"
  exit_code=0
  [options]
  IgnorePkg = foo bar

  $ PACMAN_CONF_TEST="$(write_pacman_conf "[options]" "IgnorePkg = foo bar")"
  > pacignore "check" "-c" "$PACMAN_CONF_TEST" "foo" "bar"
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF_TEST"
  exit_code=0
  [options]
  IgnorePkg = foo bar
