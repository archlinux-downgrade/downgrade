  $ source "$TESTDIR/../helper.sh"

Outputs an indicator next to previously installed packages

  $ pacman_log=$(mktemp)
  > printf "%s\n" \
  > "[2017-07-31 10:42] [ALPM] transaction started" \
  > "[2017-07-31 10:42] [ALPM] installed dia (0.1.1)" \
  > "[2017-07-31 10:42] [ALPM] running 'gtk-update-icon-cache.hook'..." \
  > "[2017-07-31 10:42] [ALPM] upgraded dia (0.1.1 -> 0.2.2)" \
  > "[2017-07-31 10:42] [ALPM] running 'systemd-update.hook'..." > "$pacman_log"
  > write_pacman_conf "LogFile = $pacman_log"
  > installed=( $(previously_installed dia) )
  > present_packages dia dia-0.1.0 dia-0.1.1 dia-0.2.2 dia-0.3.3
  Available packages (community):
  
    | 1) | dia |  | 0.1.0 |  | remote
  - | 2) | dia |  | 0.1.1 |  | remote
  - | 3) | dia |  | 0.2.2 |  | remote
    | 4) | dia |  | 0.3.3 |  | remote
  
  select a package by number:  (no-eol)
