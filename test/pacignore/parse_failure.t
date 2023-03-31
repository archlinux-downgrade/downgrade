  $ source "$TESTDIR/../helper_pacignore.sh"

Check that pacignore fails if unknown option provided

  $ PACMAN_CONF="$(write_pacman_conf "[options]" "IgnorePkg = foo bar")"
  > pacignore -q 2>&1
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF"
  *illegal option -- q (glob)
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
  exit_code=64
  [options]
  IgnorePkg = foo bar

Check that pacignore fails if no argument provided

  $ PACMAN_CONF="$(write_pacman_conf "[options]" "IgnorePkg = foo bar")"
  > pacignore -c 2>&1
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF"
  *option requires an argument -- c (glob)
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
  exit_code=64
  [options]
  IgnorePkg = foo bar

Check that pacignore fails if no root access provided for add or rm

  $ PACMAN_CONF="$(write_pacman_conf "[options]" "IgnorePkg = foo bar")"
  > pacignore add 2>&1
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF"
  pacignore must be run as root for this subcommand
  exit_code=1
  [options]
  IgnorePkg = foo bar

  $ PACMAN_CONF="$(write_pacman_conf "[options]" "IgnorePkg = foo bar")"
  > pacignore rm 2>&1
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF"
  pacignore must be run as root for this subcommand
  exit_code=1
  [options]
  IgnorePkg = foo bar

Check that parsing fails if no package is package is specified for add or rm

  $ PACMAN_CONF="$(write_pacman_conf "[options]" "IgnorePkg = foo bar")"
  > fakeroot pacignore add 2>&1
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF"
  No packages provided
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
  exit_code=1
  [options]
  IgnorePkg = foo bar

  $ PACMAN_CONF="$(write_pacman_conf "[options]" "IgnorePkg = foo bar")"
  > fakeroot pacignore rm 2>&1
  > printf "exit_code=%s\n" "$?"
  > cat "$PACMAN_CONF"
  No packages provided
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
  exit_code=1
  [options]
  IgnorePkg = foo bar
