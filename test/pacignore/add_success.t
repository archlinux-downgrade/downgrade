  $ source "$TESTDIR/../helper_pacignore.sh"

Check successful add in simplest configuration

  $ PACMAN_CONF="$(write_pacman_conf "[options]" "IgnorePkg = foo bar")"
  > fakeroot pacignore add -c "$PACMAN_CONF" baz
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF"
  exit_code=0
  [options]
  IgnorePkg = foo bar baz
  #IgnorePkg = foo bar

Check successful add in simplest configuration with whitespace

  $ PACMAN_CONF="$(write_pacman_conf "[options]" "  IgnorePkg = foo bar")"
  > fakeroot pacignore add -c "$PACMAN_CONF" baz
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF"
  exit_code=0
  [options]
  IgnorePkg = foo bar baz
  #IgnorePkg = foo bar

Check successful add with option in between

  $ PACMAN_CONF="$(write_pacman_conf "[options]" "# SomeOption" "IgnorePkg = foo bar")"
  > fakeroot pacignore add -c "$PACMAN_CONF" baz
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF"
  exit_code=0
  [options]
  # SomeOption
  IgnorePkg = foo bar baz
  #IgnorePkg = foo bar

Check successful add with option in between and additional IgnorePkg

  $ PACMAN_CONF="$(write_pacman_conf "[options]" "# SomeOption" "IgnorePkg = foo" "IgnorePkg = bar")"
  > fakeroot pacignore add -c "$PACMAN_CONF" baz
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF"
  exit_code=0
  [options]
  # SomeOption
  IgnorePkg = foo bar baz
  #IgnorePkg = foo
  #IgnorePkg = bar

Check successful add with options in between and additional IgnorePkg

  $ PACMAN_CONF="$(write_pacman_conf "[options]" "# SomeOption" "IgnorePkg = foo" "# AnotherOption" "IgnorePkg = bar")"
  > fakeroot pacignore add -c "$PACMAN_CONF" baz
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF"
  exit_code=0
  [options]
  # SomeOption
  IgnorePkg = foo bar baz
  #IgnorePkg = foo
  # AnotherOption
  #IgnorePkg = bar

Check successful add with no prior IgnorePkg

  $ PACMAN_CONF="$(write_pacman_conf "[options]" "# SomeOption" "# AnotherOption")"
  > fakeroot pacignore add -c "$PACMAN_CONF" foo bar baz
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF"
  exit_code=0
  [options]
  IgnorePkg = foo bar baz
  # SomeOption
  # AnotherOption
