# downgrade 8 "August 2014" downgrade "User Manuals"

## SYNOPSIS

`downgrade` [PACKAGE, ...] [-v <version>] [-- [PACMAN OPTIONS]]

## DESCRIPTION

Downgrade Arch Linux packages.

https://github.com/pbrisbin/downgrade

## PACKAGE SOURCES

### ARCH ROLLBACK MACHINE (ARM)

Effectively,

  `curl -d "arch=$(uname -m)" -d "pkgname=${pkg}" "$ARM_URL/exact"`

### CACHE

Effectively,

  `find $caches -name "${pkg}-[0-9R]*.pkg.tar.[gx]z"`

Where `$caches` is the list of all `CacheDir`s as defined in
*$PACMAN_CONF* (commented or not).

## ENVIRONMENT VARIABLES

*ARCH*
  Target architecture. Default is determined by `uname -m`.

*PACMAN*
  The pacman command. Default is *pacman*.

*PACMAN_CONF*
  Your pacman configuration file. Default is */etc/pacman.conf*.

*ARM_URL*
  The location of an A.R.M. server. Default is
  *https://archive.archlinux.org*.

*NOARM*
  Do not search the A.R.M. Default is *0*.

*NOCACHE*
  Do not search your local cache. Default is *0*.

*NOSUDO*
  Do not use `sudo(8)` even when available, use `su(1)` always. Default
  is *0*.

## AUTHOR

Patrick Brisbin <pbrisbin@gmail.com>

## SEE ALSO

pacman(8), pacman.conf(5), find(1), sudo(8), su(1)
