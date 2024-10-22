  $ source "$TESTDIR/../helper.sh"

Does nothing when "--ignore never"

  $ write_pacman_conf "[options]" "IgnorePkg = foo bar"
  > DOWNGRADE_IGNORE=never
  > prompt_to_ignore baz >/dev/null
  > printf "%s\n" "exit_code=$?"
  exit_code=0
