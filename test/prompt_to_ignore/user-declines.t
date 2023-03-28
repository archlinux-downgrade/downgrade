  $ source "$TESTDIR/../helper.sh"

Does nothing when told no

  $ write_pacman_conf "[options]"$'\n'"IgnorePkg = foo bar"
  > echo n | prompt_to_ignore baz >/dev/null
  > printf "%s\n" "exit_code=$?"
  > cat "$PACMAN_CONF"
  exit_code=0
  [options]
  IgnorePkg = foo bar
