  $ source "$TESTDIR/../helper_pacignore.sh"
 
Check successful rm in simplest configuration

  $ PACMAN_CONF_TEST="$(write_pacman_conf "[options]" "IgnorePkg = foo bar")"
  > fakeroot pacignore rm -c "$PACMAN_CONF_TEST" bar
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF_TEST"
  exit_code=0
  [options]
  IgnorePkg = foo
  #IgnorePkg = foo bar

Check successful rm in simplest configuration with whitespace

  $ PACMAN_CONF_TEST="$(write_pacman_conf "[options]" "  IgnorePkg = foo bar")"
  > fakeroot pacignore rm -c "$PACMAN_CONF_TEST" bar
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF_TEST"
  exit_code=0
  [options]
  IgnorePkg = foo
  #IgnorePkg = foo bar

Check successful rm with option in between

  $ PACMAN_CONF_TEST="$(write_pacman_conf "[options]" "# SomeOption" "IgnorePkg = foo bar")"
  > fakeroot pacignore rm -c "$PACMAN_CONF_TEST" bar
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF_TEST"
  exit_code=0
  [options]
  # SomeOption
  IgnorePkg = foo
  #IgnorePkg = foo bar

Check successful rm with option in between and additional IgnorePkg

  $ PACMAN_CONF_TEST="$(write_pacman_conf "[options]" "# SomeOption" "IgnorePkg = foo" "IgnorePkg = bar")"
  > fakeroot pacignore rm -c "$PACMAN_CONF_TEST" bar
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF_TEST"
  exit_code=0
  [options]
  # SomeOption
  IgnorePkg = foo
  #IgnorePkg = foo
  #IgnorePkg = bar

Check successful rm with options in between and additional IgnorePkg

  $ PACMAN_CONF_TEST="$(write_pacman_conf "[options]" "# SomeOption" "IgnorePkg = foo" "# AnotherOption" "IgnorePkg = bar")"
  > fakeroot pacignore rm -c "$PACMAN_CONF_TEST" bar
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF_TEST"
  exit_code=0
  [options]
  # SomeOption
  IgnorePkg = foo
  #IgnorePkg = foo
  # AnotherOption
  #IgnorePkg = bar

Check successful rm with options in between and additional IgnorePkg

  $ PACMAN_CONF_TEST="$(write_pacman_conf "[options]" "# SomeOption" "IgnorePkg = foo" "# AnotherOption" "IgnorePkg = bar")"
  > fakeroot pacignore rm -c "$PACMAN_CONF_TEST" foo bar
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF_TEST"
  exit_code=0
  [options]
  # SomeOption
  #IgnorePkg = foo
  # AnotherOption
  #IgnorePkg = bar
