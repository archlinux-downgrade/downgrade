  $ source "$TESTDIR/../helper.sh"

Checking that CLI options match up with environmental variables

  $ cli --pacman foo --pacman-conf bar --arch baz --ala-url bat --ala-only pkg1 pkg2; echo "$PACMAN"; echo "$PACMAN_CONF"; echo "$DOWNGRADE_ARCH"; echo "$DOWNGRADE_ALA_URL"; echo "$DOWNGRADE_FROM_ALA"; echo "$DOWNGRADE_NOSUDO"; echo "${terms[@]}"; echo "$DOWNGRADE_FROM_CACHE";
  foo
  bar
  baz
  bat
  1
  0
  pkg1 pkg2
  0

  $ cli --pacman foo --pacman-conf bar --arch baz --ala-url bat --cached-only 2>/dev/null; echo "$PACMAN"; echo "$PACMAN_CONF"; echo "$DOWNGRADE_ARCH"; echo "$DOWNGRADE_ALA_URL"; echo "$DOWNGRADE_FROM_ALA"; echo "$DOWNGRADE_NOSUDO"; echo "${terms[@]}"; echo "$DOWNGRADE_FROM_CACHE";
  foo
  bar
  baz
  bat
  0
  0
  pkg1 pkg2
  1

  $ cli --pacman foo --pacman-conf bar --arch baz --ala-url bat --ala-only --nosudo 2>/dev/null; echo "$PACMAN"; echo "$PACMAN_CONF"; echo "$DOWNGRADE_ARCH"; echo "$DOWNGRADE_ALA_URL"; echo "$DOWNGRADE_FROM_ALA"; echo "$DOWNGRADE_NOSUDO"; echo "${terms[@]}"; echo "$DOWNGRADE_FROM_CACHE";
  foo
  bar
  baz
  bat
  1
  1
  pkg1 pkg2
  0

  $ cli --pacman foo --pacman-conf bar --arch baz --ala-url bat --cached-only --nosudo 2>/dev/null; echo "$PACMAN"; echo "$PACMAN_CONF"; echo "$DOWNGRADE_ARCH"; echo "$DOWNGRADE_ALA_URL"; echo "$DOWNGRADE_FROM_ALA"; echo "$DOWNGRADE_NOSUDO"; echo "${terms[@]}"; echo "$DOWNGRADE_FROM_CACHE";
  foo
  bar
  baz
  bat
  0
  1
  pkg1 pkg2
  1
