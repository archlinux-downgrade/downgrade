  $ source "$TESTDIR/../helper.sh"

Checking that CLI options match up with environmental variables, packages and pacman options

  $ parse_options --pacman foo --pacman-conf bar --arch baz --ala-url bat --ala-only pkg1 pkg2 -- -Syu; echo "$PACMAN"; echo "$PACMAN_CONF"; echo "$DOWNGRADE_ARCH"; echo "$DOWNGRADE_ALA_URL"; echo "$DOWNGRADE_FROM_ALA"; echo "$DOWNGRADE_FROM_CACHE"; echo "$DOWNGRADE_NOSUDO"; echo "${terms[@]}"; echo "${pacman_args[@]}";
  foo
  bar
  baz
  bat
  1
  0
  0
  pkg1 pkg2
  -Syu

  $ parse_options --pacman foo --pacman-conf bar --arch baz --ala-url bat --cached-only -- -Syu 2>/dev/null; echo "$PACMAN"; echo "$PACMAN_CONF"; echo "$DOWNGRADE_ARCH"; echo "$DOWNGRADE_ALA_URL"; echo "$DOWNGRADE_FROM_ALA"; echo "$DOWNGRADE_FROM_CACHE"; echo "$DOWNGRADE_NOSUDO"; echo "${terms[@]}"; echo "${pacman_args[@]}";
  foo
  bar
  baz
  bat
  0
  1
  0
  pkg1 pkg2
  -Syu

  $ parse_options --pacman foo --pacman-conf bar --arch baz --ala-url bat --ala-only --nosudo -- -Syu 2>/dev/null; echo "$PACMAN"; echo "$PACMAN_CONF"; echo "$DOWNGRADE_ARCH"; echo "$DOWNGRADE_ALA_URL"; echo "$DOWNGRADE_FROM_ALA"; echo "$DOWNGRADE_FROM_CACHE"; echo "$DOWNGRADE_NOSUDO"; echo "${terms[@]}"; echo "${pacman_args[@]}";
  foo
  bar
  baz
  bat
  1
  0
  1
  pkg1 pkg2
  -Syu

  $ parse_options --pacman foo --pacman-conf bar --arch baz --ala-url bat --cached-only --nosudo -- -Syu 2>/dev/null; echo "$PACMAN"; echo "$PACMAN_CONF"; echo "$DOWNGRADE_ARCH"; echo "$DOWNGRADE_ALA_URL"; echo "$DOWNGRADE_FROM_ALA"; echo "$DOWNGRADE_FROM_CACHE"; echo "$DOWNGRADE_NOSUDO"; echo "${terms[@]}"; echo "${pacman_args[@]}";
  foo
  bar
  baz
  bat
  0
  1
  1
  pkg1 pkg2
  -Syu
