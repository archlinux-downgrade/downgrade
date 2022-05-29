  $ source "$TESTDIR/../helper_pacignore.sh"

Check that pacignore parses the help option correctly

  $ PACMAN_CONF_TEST="$(write_pacman_conf "[options]" "IgnorePkg = foo bar")"
  > pacignore -h
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF_TEST"
  Usage: pacignore ls [option...]
  Usage: pacignore {check|add|rm} [option...] <pkg> [pkg...]
  
  Subcommands:
    ls     list existing packages in the IgnorePkg directive
    check  check if a specified package is being ignored
    add    add package(s) to the IgnorePkg directive
    rm     remove package(s) from the IgnorePkg directive
  
  Options:
    -c  <path>
        pacman configuration file, defaults to "/etc/pacman.conf"
    -h  show help script
  exit_code=0
  [options]
  IgnorePkg = foo bar
