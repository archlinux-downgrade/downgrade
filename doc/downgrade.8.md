% DOWNGRADE(8) User Manuals
% Patrick Brisbin <pbrisbin@gmail.com>
% March 2019

# SYNOPSIS

**downgrade** [*PACKAGE*, *...*] [*--* [*PACMAN OPTIONS*]]

# DESCRIPTION

Downgrade Arch Linux packages.

# ENVIRONMENT VARIABLES

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

# EXIT CODES

Downgrade will stop further processing and exit non-zero if it encounters any of
the following scenarios for any of its arguments:

- No results found
- Results found, but you made an invalid selection
- `pacman -U` returned non-zero
- Unexpected error when handling `IgnorePkg` additions

# SEE ALSO

**pacman**(8), **pacman.conf**(5), **find**(1), **sudo**(8), **su**(1).
