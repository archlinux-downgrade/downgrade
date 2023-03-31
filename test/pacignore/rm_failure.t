  $ source "$TESTDIR/../helper_pacignore.sh"

Check rm failure with non-existant IgnorePkg entry

  $ PACMAN_CONF="$(write_pacman_conf "[options]" "IgnorePkg = foo bar")"
  > fakeroot pacignore rm -c "$PACMAN_CONF" baz
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF"
  Skipping baz as it is was never ignored
  exit_code=1
  [options]
  IgnorePkg = foo bar
