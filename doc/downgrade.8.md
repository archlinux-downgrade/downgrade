# downgrade 8 "September 2013" downgrade "User Manuals"

## SYNOPSIS

`downgrade` [OPTION, ...] [PACKAGE, ...]

## DESCRIPTION

Downgrade Arch Linux packages by installing versions found in a local 
package cache or the Arch Rollback Machine.

https://github.com/pbrisbin/downgrade

## OPTIONS

`-d`,`--pkgdir` *DIRECTORY*
  Set download directory (A.R.M. only). Default is */tmp*.

`-m`, `--arch` *x86_64*|*i686*
  Set search architecture (A.R.M. only). Default is determined by 
  `uname(1)`.

`-a`, `--noarm`
  Don't search the A.R.M. when nothing is available in cache.

`-c`, `--nocache`
  Don't look in cache, go directly to the A.R.M.

`-i`, `--noinstalled`
  Don't show *[installed]* next to installed versions (doing so has a 
  minor performance impact).

`-s`, `--nosudo`
  Don't use `sudo(8)`, even if available (`su(1)` is used in stead).

## ARCH ROLLBACK MACHINE

The Arch Rollback Machine is a community-hosted set of older packages 
and an API for searching and retrieving them.

The A.R.M. is presently located at:

  `http://repo-arm.archlinuxcn.org`

## CACHE LOCATION

The location of the local package cache is determined by reading 
*$PACMAN_CONF* for the *CacheDir* directive. By default, this value has 
a trailing slash. If your cache happens to be a symlink, the trailing 
slash is required.

## IGNORING PACKAGES

As it is common to add a package to the *IgnorePkg* directive in one's 
pacman configuration after downgrading, `downgrade` offers to do this 
for you automatically.

The process is skipped if the package name is already present in 
*IgnorePkg*.

## ENVIRONMENT VARIABLES

*PACMAN*
  The pacman command. Default is *pacman*.

*PACMAN_CONF*
  Your pacman configuration file. Default is */etc/pacman.conf*.

## AUTHOR

Patrick Brisbin <pbrisbin@gmail.com>

## SEE ALSO

pacman(8), pacman.conf(5)
