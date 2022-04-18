  $ source "$TESTDIR/../helper_pacignore.sh"

Check rm failure with non-existant IgnorePkg entry

  $ PACMAN_CONF_TEST="$(write_pacman_conf "[options]" "IgnorePkg = foo bar")"
  > fakeroot pacignore "rm" "--pacman-conf" "$PACMAN_CONF_TEST" "baz" 2>/dev/null
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF_TEST"
  exit_code=1
  [options]
  IgnorePkg = foo bar
