  $ source "$TESTDIR/../helper_pacignore.sh"

Test failing check

  $ PACMAN_CONF_TEST="$(write_pacman_conf "[options]" "# SomeOption")"
  > pacignore "check" "-c" "$PACMAN_CONF_TEST" "baz"
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF_TEST"
  exit_code=1
  [options]
  # SomeOption

  $ PACMAN_CONF_TEST="$(write_pacman_conf "[options]" "IgnorePkg = foo bar")"
  > pacignore "check" "-c" "$PACMAN_CONF_TEST" "baz"
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF_TEST"
  exit_code=1
  [options]
  IgnorePkg = foo bar

  $ PACMAN_CONF_TEST="$(write_pacman_conf "[options]" "IgnorePkg = foo bar")"
  > pacignore "check" "-c" "$PACMAN_CONF_TEST" "foo" "baz"
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF_TEST"
  exit_code=1
  [options]
  IgnorePkg = foo bar

  $ PACMAN_CONF_TEST="$(write_pacman_conf "[options]" "IgnorePkg = foo bar")"
  > pacignore "check" "-c" "$PACMAN_CONF_TEST" "bar" "baz"
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF_TEST"
  exit_code=1
  [options]
  IgnorePkg = foo bar
