  $ source "$TESTDIR/../helper.sh"

Checking that CLI options match up with environmental variables, packages and pacman options

  $ parse_options --pacman foo --pacman-conf bar --pacman-cache /home/ --pacman-log /home/test.log --maxdepth 10 --ala-url bat --ala-only pkg1 pkg2 -- -Syu; echo "$PACMAN"; echo "$PACMAN_CONF"; echo "$DOWNGRADE_ALA_URL"; echo "${PACMAN_CACHE[@]}"; echo "$PACMAN_LOG"; echo "$DOWNGRADE_MAXDEPTH"; echo "$DOWNGRADE_FROM_ALA"; echo "$DOWNGRADE_FROM_CACHE"; echo "$DOWNGRADE_NOSUDO"; echo "${terms[@]}"; echo "${pacman_args[@]}"; unset PACMAN_CACHE; unset terms
  foo
  bar
  bat
  /home/
  /home/test.log
  10
  1
  0
  0
  pkg1 pkg2
  -Syu

  $ parse_options --pacman foo --pacman-conf bar --pacman-cache /home/ --pacman-log /home/test.log --maxdepth 10 --ala-url bat --cached-only pkg1 pkg2 -- -Syu 2>/dev/null; echo "$PACMAN"; echo "$PACMAN_CONF"; echo "$DOWNGRADE_ALA_URL"; echo "${PACMAN_CACHE[@]}"; echo "$PACMAN_LOG"; echo "$DOWNGRADE_MAXDEPTH"; echo "$DOWNGRADE_FROM_ALA"; echo "$DOWNGRADE_FROM_CACHE"; echo "$DOWNGRADE_NOSUDO"; echo "${terms[@]}"; echo "${pacman_args[@]}"; unset PACMAN_CACHE; unset terms
  foo
  bar
  bat
  /home/
  /home/test.log
  10
  0
  1
  0
  pkg1 pkg2
  -Syu

  $ parse_options --pacman foo --pacman-conf bar --pacman-cache /home/ --pacman-log /home/test.log --maxdepth 10 --ala-url bat --ala-only --nosudo pkg1 pkg2 -- -Syu 2>/dev/null; echo "$PACMAN"; echo "$PACMAN_CONF"; echo "$DOWNGRADE_ALA_URL"; echo "${PACMAN_CACHE[@]}"; echo "$PACMAN_LOG"; echo "$DOWNGRADE_MAXDEPTH"; echo "$DOWNGRADE_FROM_ALA"; echo "$DOWNGRADE_FROM_CACHE"; echo "$DOWNGRADE_NOSUDO"; echo "${terms[@]}"; echo "${pacman_args[@]}"; unset PACMAN_CACHE; unset terms
  foo
  bar
  bat
  /home/
  /home/test.log
  10
  1
  0
  1
  pkg1 pkg2
  -Syu

  $ parse_options --pacman foo --pacman-conf bar --pacman-cache /home/ --pacman-log /home/test.log --maxdepth 10 --ala-url bat --cached-only --nosudo pkg1 pkg2 -- -Syu 2>/dev/null; echo "$PACMAN"; echo "$PACMAN_CONF"; echo "$DOWNGRADE_ALA_URL"; echo "${PACMAN_CACHE[@]}"; echo "$PACMAN_LOG"; echo "$DOWNGRADE_MAXDEPTH"; echo "$DOWNGRADE_FROM_ALA"; echo "$DOWNGRADE_FROM_CACHE"; echo "$DOWNGRADE_NOSUDO"; echo "${terms[@]}"; echo "${pacman_args[@]}"; unset PACMAN_CACHE; unset terms
  foo
  bar
  bat
  /home/
  /home/test.log
  10
  0
  1
  1
  pkg1 pkg2
  -Syu

  $ parse_options --pacman foo --pacman-conf bar --pacman-cache /home/ --pacman-cache /away/ pkg1 pkg2 2>/dev/null; echo "$PACMAN"; echo "$PACMAN_CONF"; echo "${PACMAN_CACHE[@]}"; echo "${terms[@]}"; unset PACMAN_CACHE; unset terms
  foo
  bar
  /home/ /away/
  pkg1 pkg2
