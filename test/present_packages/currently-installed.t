  $ source "$TESTDIR/../helper.sh"

Outputs an indicator next to currently installed packages

  $ pacman_log=$(mktemp)
  > printf "%s\n" \
  > "[2017-07-31 10:42] [ALPM] transaction started" \
  > "[2017-07-31 10:42] [ALPM] installed dia (0.1.1)" \
  > "[2017-07-31 10:42] [ALPM] running 'gtk-update-icon-cache.hook'..." \
  > "[2017-07-31 10:42] [ALPM] upgraded dia (0.1.1 -> 0.2.2)" \
  > "[2017-07-31 10:42] [ALPM] running 'systemd-update.hook'..." > "$pacman_log"
  > write_pacman_conf "LogFile = $pacman_log"
  > installed=( $(previously_installed dia) )
  > current=( $(currently_installed dia) )
  > present_packages dia-0.1.0 dia-0.1.1 dia-0.2.2 dia-0.3.3
  Available packages:
  
     1) dia-0.1.0
  -  2) dia-0.1.1
  +  3) dia-0.2.2
     4) dia-0.3.3
  
  select a package by number:  (no-eol)
