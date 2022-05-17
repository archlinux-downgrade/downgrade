  $ source "$TESTDIR/../helper_pacignore.sh"

Check add failure with existing IgnorePkg entry

  $ PACMAN_CONF_TEST="$(write_pacman_conf "[options]" "IgnorePkg = foo bar")"
  > fakeroot pacignore add -c "$PACMAN_CONF_TEST" bar
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF_TEST"
  Skipping bar as it is already ignored
  exit_code=1
  [options]
  IgnorePkg = foo bar
