# downgrade 8 "September 2013" downgrade "User Manuals"

## SYNOPSIS

`downgrade` [OPTION, ...] [PACKAGE, ...]

## DESCRIPTION

Downgrade Arch Linux packages.

https://github.com/pbrisbin/downgrade

## OPTIONS

`-m`, `--arch` *x86_64*|*i686*
  Specify the target architecture. Default is determined by `uname(1)`.

`-p`, `--provider` *arm*|*cache*|*all*
  Specify which provider(s) to use. Default is *all*.

`-s`, `--nosudo`
  Don't use `sudo(8)`, even if available (`su(1)` is used in stead).

## PROVIDERS

A provider is a source for package files. All it must do is output a 
list of URLs or absolute file paths. URLs will be downloaded into the 
current directory then installed. Files are installed directly.

### ARCH ROLLBACK MACHINE (ARM)

The `arm` provider searches for packages by *POST*ing *arch* and 
*pkgname* to *$ARM_URL/exact/*. The server is expected to return fully 
qualified package URLs as the fifth field in pipe-separated lines.

### CACHE

The `cache` provider searches for packages by calling `find(1)` in all 
*CacheDir*s which are defined in *$PACMAN_CONF*.

*NOTE*: downgrade will read *CacheDir* directives even if commented. 
This is a feature, not a bug.

## ENVIRONMENT VARIABLES

*PACMAN*
  The pacman command. Default is *pacman*.

*PACMAN_CONF*
  Your pacman configuration file. Default is */etc/pacman.conf*.

*ARM_URL*
  The location of an A.R.M. server. Default is 
  *http://repo-arm.archlinuxcn.org*.

## AUTHOR

Patrick Brisbin <pbrisbin@gmail.com>

## SEE ALSO

pacman(8), pacman.conf(5)
