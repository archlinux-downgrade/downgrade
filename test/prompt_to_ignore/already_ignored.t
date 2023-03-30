  $ source "$TESTDIR/../helper.sh"
  > PACIGNORE_DEFAULT_CHECK=0

Does nothing when asked to ignore but package is already ignored

  $ write_pacman_conf "IgnorePkg = foo bar"
  > DOWNGRADE_PROMPT_IGNORE=always
  > prompt_to_ignore bar >/dev/null
  > printf "%s\n" "exit_code=$?"
  exit_code=0

  $ write_pacman_conf "IgnorePkg = foo bar"
  > DOWNGRADE_PROMPT_IGNORE=prompt
  > prompt_to_ignore bar >/dev/null
  > printf "%s\n" "exit_code=$?"
  exit_code=0
