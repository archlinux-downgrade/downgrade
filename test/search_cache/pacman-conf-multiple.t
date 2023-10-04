  $ source "$TESTDIR/../helper.sh"

From multiple directories

  $ cache_1=$(mktemp -d --suffix=.1)
  > cache_2=$(mktemp -d --suffix=.2)
  > touch \
  >   "$cache_1/foo-1.0-1-any.pkg.tar.gz" \
  >   "$cache_2/foo-2.0-1-any.pkg.tar.gz" \
  >   "$cache_1/foo-3.5-1-any.pkg.tar.xz" \
  >   "$cache_2/foo-1.1-1-any.pkg.tar.gz"
  > write_pacman_conf \
  >   "CacheDir = $cache_1/" \
  >   "CacheDir = $cache_2/"
  > DOWNGRADE_FROM_CACHE=1 search_cache 'foo' | cut -d . -f 3- | sort
  1/foo-1.0-1-any.pkg.tar.gz (glob)
  1/foo-3.5-1-any.pkg.tar.xz (glob)
  2/foo-1.1-1-any.pkg.tar.gz (glob)
  2/foo-2.0-1-any.pkg.tar.gz (glob)
