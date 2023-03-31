  $ source "$TESTDIR/../helper_pacignore.sh"

Test failing check

  $ PACMAN_CONF="$(write_pacman_conf "[options]" "# SomeOption")"
  > pacignore check -c "$PACMAN_CONF" baz
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF"
  exit_code=1
  [options]
  # SomeOption

  $ PACMAN_CONF="$(write_pacman_conf "[options]" "IgnorePkg = foo bar")"
  > pacignore check -c "$PACMAN_CONF" baz
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF"
  exit_code=1
  [options]
  IgnorePkg = foo bar

  $ PACMAN_CONF="$(write_pacman_conf "[options]" "IgnorePkg = foo bar")"
  > pacignore check -c "$PACMAN_CONF" foo baz
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF"
  exit_code=1
  [options]
  IgnorePkg = foo bar

  $ PACMAN_CONF="$(write_pacman_conf "[options]" "IgnorePkg = foo bar")"
  > pacignore check -c "$PACMAN_CONF" bar baz
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF"
  exit_code=1
  [options]
  IgnorePkg = foo bar
