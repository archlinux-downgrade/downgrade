  $ source "$TESTDIR/../helper.sh"

Adds to IgnorePkg when "--ignore always"

  $ write_pacman_conf "IgnorePkg = foo bar"
  > DOWNGRADE_PROMPT_IGNORE=always
  > prompt_to_ignore baz >/dev/null
  > printf "%s\n" "exit_code=$?"
  pacignore add -c * baz (glob)
  exit_code=0
