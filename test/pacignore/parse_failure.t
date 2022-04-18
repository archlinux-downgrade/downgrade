  $ source "$TESTDIR/../helper_pacignore.sh"

Check that pacignore fails if no argument provided

  $ PACMAN_CONF_TEST="$(write_pacman_conf "[options]" "IgnorePkg = foo bar")"
  > pacignore "--pacman-conf" 2>/dev/null
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF_TEST"
  exit_code=1
  [options]
  IgnorePkg = foo bar

Check that pacignore fails if no root access provided for add or rm

  $ PACMAN_CONF_TEST="$(write_pacman_conf "[options]" "IgnorePkg = foo bar")"
  > pacignore "add" 2>/dev/null
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF_TEST"
  exit_code=1
  [options]
  IgnorePkg = foo bar

  $ PACMAN_CONF_TEST="$(write_pacman_conf "[options]" "IgnorePkg = foo bar")"
  > pacignore "rm" 2>/dev/null
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF_TEST"
  exit_code=1
  [options]
  IgnorePkg = foo bar

Check that parsing fails if no package is package is specified for add or rm

  $ PACMAN_CONF_TEST="$(write_pacman_conf "[options]" "IgnorePkg = foo bar")"
  > fakeroot pacignore "add" 2>/dev/null
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF_TEST"
  exit_code=1
  [options]
  IgnorePkg = foo bar

  $ PACMAN_CONF_TEST="$(write_pacman_conf "[options]" "IgnorePkg = foo bar")"
  > fakeroot pacignore "rm" 2>/dev/null
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF_TEST"
  exit_code=1
  [options]
  IgnorePkg = foo bar
