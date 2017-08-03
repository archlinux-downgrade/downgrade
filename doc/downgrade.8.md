# downgrade 8 "August 2014" downgrade "User Manuals"

## SYNOPSIS

`downgrade` [PACKAGE, ...] [-- [PACMAN OPTIONS]]

## DESCRIPTION

Downgrade Arch Linux packages.

https://github.com/pbrisbin/downgrade

## ENVIRONMENT VARIABLES

*PACMAN*
  The pacman command. Default is *pacman*.

*PACMAN_CONF*
  Your pacman configuration file. Default is */etc/pacman.conf*.

*PACMAN_CACHE*
  Your package cache directory. Default is read from `$PACMAN_CONF`, or set to
  */var/pacman/pkg/* when not found.

*PACMAN_LOG*
  Your pacman log file. Default is read from `$PACMAN_CONF`, or set to
  */var/log/pacman.log* when not found.

*DOWNGRADE_ARCH*
  Target architecture. Default is determined by `uname -m`.

*DOWNGRADE_ALA_URL*
  The location of an A.L.A. server. Default is 
  *https://archive.archlinux.org*.

*DOWNGRADE_FROM_ALA*
  Search the A.L.A. Default is *1*.

*DOWNGRADE_FROM_CACHE*
  Search your local cache. Default is *1*.

*DOWNGRADE_NOSUDO*
  Do not use `sudo(8)` even when available, use `su(1)` always. Default 
  is *0*.

*DOWNGRADE_PAGE_SIZE*
  How many results to present at a time. Default is *30*.

## AUTHOR

Patrick Brisbin <pbrisbin@gmail.com>

## SEE ALSO

pacman(8), pacman.conf(5), find(1), sudo(8), su(1)
