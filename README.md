# Downgrade

Eases downgrading packages in Arch Linux.

~~~ 
  usage: downgrade [ -d <dir> ] [ -m <32|64> ] [ -a ] [ -i ] [ -- ] <pkg> ...
    options:
      -d,--pkgdir       set download directory (A.R.M. only), default is `~/Packages'
      -m,--arch         set search architecture (A.R.M. only), default is determined by `uname -m`
      -a,--noarm        don't search the A.R.M when nothing's available in cache
      -c,--nocache      don't look in cache, go directly to A.R.M
      -i,--noinstalled  don't show [installed] next to installed versions (speed up)

      -p,--pacman       (deprecated, set a PACMAN env var if not using just `pacman')
~~~

First presents options in your local cache, then (if you choose) 
searches the Arch Rollback Machine for older versions available online.
