  $ source "$TESTDIR/../helper.sh"

With a version string included

  $ cache=$(mktemp -d)
  > touch \
  >   "$cache/foo-1.0-1-any.pkg.tar.gz" \
  >   "$cache/foo-2.0-1-any.pkg.tar.gz" \
  >   "$cache/foo-3.5-1-any.pkg.tar.xz" \
  >   "$cache/foo-1.1-1-any.pkg.tar.gz" \
  >   "$cache/foo-completions-1.1-1-any.pkg.tar.gz"
  > write_pacman_conf "CacheDir = $cache/"
  > DOWNGRADE_FROM_CACHE=1 search_cache 'foo' | filter_packages 'foo' '=~' '^1' | sort
  /tmp/*/foo-1.0-1-any.pkg.tar.gz (glob)
  /tmp/*/foo-1.1-1-any.pkg.tar.gz (glob)

  $ cache=$(mktemp -d)
  > touch \
  >   "$cache/foo-1.0-1-any.pkg.tar.gz" \
  >   "$cache/foo-2.0-1-any.pkg.tar.gz" \
  >   "$cache/foo-3.5-1-any.pkg.tar.xz" \
  >   "$cache/foo-1.1-1-any.pkg.tar.gz" \
  >   "$cache/foo-completions-1.1-1-any.pkg.tar.gz"
  > write_pacman_conf "CacheDir = $cache/"
  > DOWNGRADE_FROM_CACHE=1 search_cache 'foo' | filter_packages 'foo' '=' '1.1-1' | sort
  /tmp/*/foo-1.1-1-any.pkg.tar.gz (glob)

  $ cache=$(mktemp -d)
  > touch \
  >   "$cache/foo-1.0-1-any.pkg.tar.gz" \
  >   "$cache/foo-2.0-1-any.pkg.tar.gz" \
  >   "$cache/foo-3.5-1-any.pkg.tar.xz" \
  >   "$cache/foo-1.1-1-any.pkg.tar.gz" \
  >   "$cache/foo-completions-1.1-1-any.pkg.tar.gz"
  > write_pacman_conf "CacheDir = $cache/"
  > DOWNGRADE_FROM_CACHE=1 search_cache 'foo' | filter_packages 'foo' '==' '1.1-1' | sort
  /tmp/*/foo-1.1-1-any.pkg.tar.gz (glob)

  $ cache=$(mktemp -d)
  > touch \
  >   "$cache/foo-1.0-1-any.pkg.tar.gz" \
  >   "$cache/foo-2.0-1-any.pkg.tar.gz" \
  >   "$cache/foo-3.5-1-any.pkg.tar.xz" \
  >   "$cache/foo-1.1-1-any.pkg.tar.gz" \
  >   "$cache/foo-completions-1.1-1-any.pkg.tar.gz"
  > write_pacman_conf "CacheDir = $cache/"
  > DOWNGRADE_FROM_CACHE=1 search_cache 'foo' | filter_packages 'foo' '>=' '2.0-1' | sort
  /tmp/*/foo-2.0-1-any.pkg.tar.gz (glob)
  /tmp/*/foo-3.5-1-any.pkg.tar.xz (glob)

  $ cache=$(mktemp -d)
  > touch \
  >   "$cache/foo-1.0-1-any.pkg.tar.gz" \
  >   "$cache/foo-2.0-1-any.pkg.tar.gz" \
  >   "$cache/foo-3.5-1-any.pkg.tar.xz" \
  >   "$cache/foo-1.1-1-any.pkg.tar.gz" \
  >   "$cache/foo-completions-1.1-1-any.pkg.tar.gz"
  > write_pacman_conf "CacheDir = $cache/"
  > DOWNGRADE_FROM_CACHE=1 search_cache 'foo' | filter_packages 'foo' '<=' '2.0-1' | sort
  /tmp/*/foo-1.0-1-any.pkg.tar.gz (glob)
  /tmp/*/foo-1.1-1-any.pkg.tar.gz (glob)
  /tmp/*/foo-2.0-1-any.pkg.tar.gz (glob)

  $ cache=$(mktemp -d)
  > touch \
  >   "$cache/foo-1.0-1-any.pkg.tar.gz" \
  >   "$cache/foo-2.0-1-any.pkg.tar.gz" \
  >   "$cache/foo-3.5-1-any.pkg.tar.xz" \
  >   "$cache/foo-1.1-1-any.pkg.tar.gz" \
  >   "$cache/foo-completions-1.1-1-any.pkg.tar.gz"
  > write_pacman_conf "CacheDir = $cache/"
  > DOWNGRADE_FROM_CACHE=1 search_cache 'foo' | filter_packages 'foo' '>' '2.0-1' | sort
  /tmp/*/foo-3.5-1-any.pkg.tar.xz (glob)

  $ cache=$(mktemp -d)
  > touch \
  >   "$cache/foo-1.0-1-any.pkg.tar.gz" \
  >   "$cache/foo-2.0-1-any.pkg.tar.gz" \
  >   "$cache/foo-3.5-1-any.pkg.tar.xz" \
  >   "$cache/foo-1.1-1-any.pkg.tar.gz" \
  >   "$cache/foo-completions-1.1-1-any.pkg.tar.gz"
  > write_pacman_conf "CacheDir = $cache/"
  > DOWNGRADE_FROM_CACHE=1 search_cache 'foo' | filter_packages 'foo' '<' '2.0-1' | sort
  /tmp/*/foo-1.0-1-any.pkg.tar.gz (glob)
  /tmp/*/foo-1.1-1-any.pkg.tar.gz (glob)
