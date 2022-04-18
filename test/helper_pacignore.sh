# Provide access to project root
export SRCDIR=${TESTDIR/\/test*/}

# Place mocks on $PATH (e.g. curl)
export PATH="$SRCDIR/bin:$SRCDIR/test/bin:$PATH"

# Utilities
write_pacman_conf() {
  PACMAN_CONF_TEST="/tmp/tmp.$(echo "$@" | md5sum | cut -d ' ' -f 1)"
  printf "%s\n" "$@" > "$PACMAN_CONF_TEST"
  printf "%s\n" "$PACMAN_CONF_TEST"
}
