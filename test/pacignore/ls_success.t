  $ source "$TESTDIR/../helper_pacignore.sh"

Check successful list

  $ PACMAN_CONF="$(write_pacman_conf "[options]" "IgnorePkg = foo bar")"
  > pacignore ls -c "$PACMAN_CONF"
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF"
  foo
  bar
  exit_code=0
  [options]
  IgnorePkg = foo bar
