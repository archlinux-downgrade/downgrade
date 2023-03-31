  $ source "$TESTDIR/../helper_pacignore.sh"

Test successful check

  $ PACMAN_CONF="$(write_pacman_conf "[options]" "IgnorePkg = foo bar")"
  > pacignore check -c "$PACMAN_CONF" foo
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF"
  exit_code=0
  [options]
  IgnorePkg = foo bar

  $ PACMAN_CONF="$(write_pacman_conf "[options]" "IgnorePkg = foo bar")"
  > pacignore check -c "$PACMAN_CONF" bar
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF"
  exit_code=0
  [options]
  IgnorePkg = foo bar

  $ PACMAN_CONF="$(write_pacman_conf "[options]" "IgnorePkg = foo bar")"
  > pacignore check -c "$PACMAN_CONF" foo bar
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF"
  exit_code=0
  [options]
  IgnorePkg = foo bar
