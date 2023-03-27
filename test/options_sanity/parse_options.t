  $ source "$TESTDIR/../helper.sh"

Checking that CLI options match up with environmental variables, packages and pacman options

  $ parse_options --pacman foo --pacman-conf bar --pacman-cache /home/ --pacman-cache /away/ --pacman-log /home/test.log --maxdepth 10 --ala-url bat pkg1 pkg2 -- -Syu 2>/dev/null; echo "$PACMAN"; echo "$PACMAN_CONF"; echo "$DOWNGRADE_ALA_URL"; echo "${PACMAN_CACHE[@]}"; echo "$PACMAN_LOG"; echo "$DOWNGRADE_MAXDEPTH"; echo "$DOWNGRADE_FROM_ALA"; echo "$DOWNGRADE_FROM_CACHE"; echo "${terms[@]}"; echo "${pacman_args[@]}"; unset PACMAN_CACHE; unset terms
  foo
  bar
  bat
  /home/ /away/
  /home/test.log
  10
  0
  0
  pkg1 pkg2
  -Syu

  $ parse_options --pacman foo --pacman-conf bar --pacman-cache /home/ --pacman-log /home/test.log --maxdepth 10 --ala-url bat --ala-only pkg1 pkg2 -- -Syu; echo "$PACMAN"; echo "$PACMAN_CONF"; echo "$DOWNGRADE_ALA_URL"; echo "${PACMAN_CACHE[@]}"; echo "$PACMAN_LOG"; echo "$DOWNGRADE_MAXDEPTH"; echo "$DOWNGRADE_FROM_ALA"; echo "$DOWNGRADE_FROM_CACHE"; echo "${terms[@]}"; echo "${pacman_args[@]}"; unset PACMAN_CACHE; unset terms
  foo
  bar
  bat
  /home/
  /home/test.log
  10
  1
  0
  pkg1 pkg2
  -Syu

  $ parse_options --pacman foo --pacman-conf bar --pacman-cache /home/ --pacman-log /home/test.log --maxdepth 10 --ala-url bat --cached-only pkg1 pkg2 -- -Syu 2>/dev/null; echo "$PACMAN"; echo "$PACMAN_CONF"; echo "$DOWNGRADE_ALA_URL"; echo "${PACMAN_CACHE[@]}"; echo "$PACMAN_LOG"; echo "$DOWNGRADE_MAXDEPTH"; echo "$DOWNGRADE_FROM_ALA"; echo "$DOWNGRADE_FROM_CACHE"; echo "${terms[@]}"; echo "${pacman_args[@]}"; unset PACMAN_CACHE; unset terms
  foo
  bar
  bat
  /home/
  /home/test.log
  10
  0
  1
  pkg1 pkg2
  -Syu

  $ parse_options --ignore prompt foo; echo "$DOWNGRADE_PROMPT_IGNORE"
  prompt

  $ parse_options --ignore always foo; echo "$DOWNGRADE_PROMPT_IGNORE"
  always

  $ parse_options --ignore never foo; echo "$DOWNGRADE_PROMPT_IGNORE"
  never
