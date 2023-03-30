  $ source "$TESTDIR/../helper.sh"

Adds to IgnorePkg when told yes

  $ write_pacman_conf "IgnorePkg = foo bar"
  > ignore baz >/dev/null
  > printf "%s\n" "exit_code=$?"
  pacignore add -c * baz (glob)
  exit_code=0
