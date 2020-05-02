# Prevent actual execution of script
export LIB=1

# Provide access to project root
export SRCDIR=${TESTDIR/\/test*/}

# Place mocks on $PATH (e.g. curl)
export PATH="$SRCDIR/test/bin:$PATH"

# Set script defaults for test environment
export PACMAN_CONF=$(mktemp)
export DOWNGRADE_FROM_ALA=0
export DOWNGRADE_FROM_CACHE=0

# Stub functions that won't work (on CI) or need different behavior.
pacsort() { cat; }
sudo() { "$@"; }

# Utilities
write_pacman_conf() {
  printf "%s\n" "$@" > "$PACMAN_CONF"
}

ignore() { yes | prompt_to_ignore "$@" >/dev/null; }

if [[ ! "$(uname -r)" =~ "arch" ]]; then
  vercmp(){
    local p1="$1" p2="$2"
    python -c 'import sys; import rpm_vercmp.vercmp as vercmp; result=vercmp(sys.argv[1],sys.argv[2]); print(result);' "$p1" "$p2"
  }
fi

# Load implementation
source "$SRCDIR"/downgrade
