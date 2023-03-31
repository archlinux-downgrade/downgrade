# Provide access to project root
export SRCDIR=${TESTDIR/\/test*/}

# Place mocks on $PATH (e.g. curl)
export PATH="$SRCDIR/bin:$SRCDIR/test/bin:$PATH"

# Create pacignore test directory
export TMP_PACIGNORE="/tmp/pacignore/test"
mkdir -p "$TMP_PACIGNORE"

# Utilities
write_pacman_conf() {
  PACMAN_CONF="$TMP_PACIGNORE/tmp.$(echo "$@" | md5sum | cut -d ' ' -f 1)"
  printf "%s\n" "$@" > "$PACMAN_CONF"
  printf "%s\n" "$PACMAN_CONF"
}
