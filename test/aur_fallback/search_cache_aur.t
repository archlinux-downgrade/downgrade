  $ source "$TESTDIR/../helper.sh"
  > PACMAN_LOG=/dev/null

search_cache finds packages in AUR helper cache directories

  $ aur_cache=$(mktemp -d)
  > mkdir -p "$aur_cache/foo"
  > touch "$aur_cache/foo/foo-1.0-1-x86_64.pkg.tar.zst"
  > DOWNGRADE_FROM_CACHE=1
  > DOWNGRADE_MAXDEPTH=2
  > DOWNGRADE_ARCH=x86_64
  > PACMAN_CACHE=("$aur_cache")
  > search_cache 'foo' | sort
  /tmp/*/foo/foo-1.0-1-x86_64.pkg.tar.zst (glob)

search_cache finds packages in both regular and AUR caches

  $ regular_cache=$(mktemp -d)
  > aur_cache=$(mktemp -d)
  > touch "$regular_cache/foo-2.0-1-any.pkg.tar.gz"
  > mkdir -p "$aur_cache/foo"
  > touch "$aur_cache/foo/foo-1.0-1-x86_64.pkg.tar.zst"
  > DOWNGRADE_FROM_CACHE=1
  > DOWNGRADE_MAXDEPTH=2
  > DOWNGRADE_ARCH=x86_64
  > PACMAN_CACHE=("$regular_cache" "$aur_cache")
  > search_cache 'foo' | xargs -n1 basename | sort
  foo-1.0-1-x86_64.pkg.tar.zst
  foo-2.0-1-any.pkg.tar.gz
