# Prevent actual execution of script
export LIB=1

# Provide access to project root
export SRCDIR=${TESTDIR/\/test*/}

# Place mocks on $PATH (e.g. curl)
export PATH="$SRCDIR/test/bin:$PATH"

# Load implementation
source "$SRCDIR"/src/downgrade

# Set script defaults for test environment
export PACMAN_CONF=$(mktemp)
export DOWNGRADE_FROM_ALA=0
export DOWNGRADE_FROM_CACHE=0
export DOWNGRADE_CONF="$SRCDIR/test/conf/downgrade_test.conf"
export PACIGNORE_DEFAULT_CHECK=1

# Stub functions that won't work (on CI) or need different behavior.
pacsort() { cat; }
sudo() { "$@"; }
fzf() { grep "${FZF_CHOICE})"; }
read_pacman_conf() { sed '/^#\?'"$1"' *= *\(.*\)$/!d; s//\1/' "$PACMAN_CONF"; }

# Utilities
write_pacman_conf() {
  printf "%s\n" "$@" >"$PACMAN_CONF"
}

ignore() { yes | prompt_to_ignore "$@" >/dev/null; }

pacignore() {
  case "$1" in
    check)
      return "$PACIGNORE_DEFAULT_CHECK"
      ;;
    add)
      printf "${FUNCNAME[0]} %s\n" "$*" >&2
      ;;
  esac
}
