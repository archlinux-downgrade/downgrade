  $ source "$TESTDIR/helper.sh"

From a single directory

  $ mkdir $CRAMTMP/cache
  > touch $CRAMTMP/cache/foo-1.0.pkg.tar.gz
  > touch $CRAMTMP/cache/foo-2.0.pkg.tar.gz
  > touch $CRAMTMP/cache/foo-3.5.pkg.tar.xz
  > touch $CRAMTMP/cache/foo-1.1.pkg.tar.gz
  > touch $CRAMTMP/cache/foo-completions-1.1.pkg.tar.gz
  > echo 'Foo = bar/'                 >  $CRAMTMP/pacman.conf
  > echo                              >> $CRAMTMP/pacman.conf
  > echo "CacheDir = $CRAMTMP/cache/" >> $CRAMTMP/pacman.conf
  > echo                              >> $CRAMTMP/pacman.conf
  > echo 'Baz = bat/'                 >> $CRAMTMP/pacman.conf
  > echo                              >> $CRAMTMP/pacman.conf

  $ PACMAN_CONF=$CRAMTMP/pacman.conf NOARM=1 search_packages 'foo' | sort
  /tmp/*/cache/foo-1.0.pkg.tar.gz (glob)
  /tmp/*/cache/foo-1.1.pkg.tar.gz (glob)
  /tmp/*/cache/foo-2.0.pkg.tar.gz (glob)
  /tmp/*/cache/foo-3.5.pkg.tar.xz (glob)

From multiple directories

  $ mkdir -p $CRAMTMP/cache{_1,_2}
  > touch $CRAMTMP/cache_1/foo-1.0.pkg.tar.gz
  > touch $CRAMTMP/cache_2/foo-2.0.pkg.tar.gz
  > touch $CRAMTMP/cache_1/foo-3.5.pkg.tar.xz
  > touch $CRAMTMP/cache_2/foo-1.1.pkg.tar.gz
  > echo 'Foo = bar/'                   >  $CRAMTMP/pacman.conf
  > echo                                >> $CRAMTMP/pacman.conf
  > echo "CacheDir = $CRAMTMP/cache_1/" >> $CRAMTMP/pacman.conf
  > echo                                >> $CRAMTMP/pacman.conf
  > echo "CacheDir = $CRAMTMP/cache_2/" >> $CRAMTMP/pacman.conf
  > echo                                >> $CRAMTMP/pacman.conf
  > echo "Baz = bat/"                   >> $CRAMTMP/pacman.conf
  > echo                                >> $CRAMTMP/pacman.conf

  $ PACMAN_CONF=$CRAMTMP/pacman.conf NOARM=1 search_packages 'foo' | sort
  /tmp/*/cache_1/foo-1.0.pkg.tar.gz (glob)
  /tmp/*/cache_1/foo-3.5.pkg.tar.xz (glob)
  /tmp/*/cache_2/foo-1.1.pkg.tar.gz (glob)
  /tmp/*/cache_2/foo-2.0.pkg.tar.gz (glob)

With a version string included

  $ mkdir $CRAMTMP/cache_3
  > touch $CRAMTMP/cache_3/foo-1.0.pkg.tar.gz
  > touch $CRAMTMP/cache_3/foo-2.0.pkg.tar.gz
  > touch $CRAMTMP/cache_3/foo-3.5.pkg.tar.xz
  > touch $CRAMTMP/cache_3/foo-1.1.pkg.tar.gz
  > touch $CRAMTMP/cache_3/foo-completions-1.1.pkg.tar.gz
  > echo 'Foo = bar/'                   >  $CRAMTMP/pacman.conf
  > echo                                >> $CRAMTMP/pacman.conf
  > echo "CacheDir = $CRAMTMP/cache_3/" >> $CRAMTMP/pacman.conf
  > echo                                >> $CRAMTMP/pacman.conf
  > echo 'Baz = bat/'                   >> $CRAMTMP/pacman.conf
  > echo                                >> $CRAMTMP/pacman.conf

  $ PACMAN_CONF=$CRAMTMP/pacman.conf NOARM=1 search_packages 'foo-1' | sort
  /tmp/*/cache_3/foo-1.0.pkg.tar.gz (glob)
  /tmp/*/cache_3/foo-1.1.pkg.tar.gz (glob)
