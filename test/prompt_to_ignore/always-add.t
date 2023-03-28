  $ source "$TESTDIR/../helper.sh"

Adds to IgnorePkg when "--ignore always"

  $ write_pacman_conf "[options]"$'\n'"IgnorePkg = foo bar"
  > DOWNGRADE_PROMPT_IGNORE=always
  > prompt_to_ignore baz >/dev/null
  > printf "%s\n" "exit_code=$?"
  > cat "$PACMAN_CONF"
  exit_code=0
  [options]
  IgnorePkg = foo bar baz
  #IgnorePkg = foo bar
