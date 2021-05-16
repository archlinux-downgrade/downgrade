  $ source "$TESTDIR/../helper.sh"

Check that relevant arrays are made unique if they contain elements, otherwise they should be left as empty arrays

  $ parse_options --pacman-cache /home/ --pacman-cache /away/ --pacman-cache /home/ foo 2>/dev/null; echo "${PACMAN_CACHE[@]}"; read_unique PACMAN_CACHE "${PACMAN_CACHE[@]}"; echo "${PACMAN_CACHE[@]}"; unset PACMAN_CACHE; unset terms
  /home/ /away/ /home/
  /away/ /home/

  $ parse_options foo bar foo 2>/dev/null; echo "${terms[@]}"; read_unique terms "${terms[@]}"; echo "${terms[@]}"; unset PACMAN_CACHE; unset terms
  foo bar foo
  bar foo

  $ parse_options foo 2>/dev/null; echo "${#PACMAN_CACHE[@]}"; read_unique PACMAN_CACHE "${PACMAN_CACHE[@]}"; echo "${#PACMAN_CACHE[@]}"; unset PACMAN_CACHE; unset terms
  0
  0
