  $ source "$TESTDIR/../helper.sh"

Does nothing when "--ignore never"

  $ write_pacman_conf "[options]"$'\n'"IgnorePkg = foo bar"
  > DOWNGRADE_PROMPT_IGNORE=never
  > prompt_to_ignore baz >/dev/null
  > printf "%s\n" "exit_code=$?"
  > cat "$PACMAN_CONF"
  exit_code=0
  [options]
  IgnorePkg = foo bar


