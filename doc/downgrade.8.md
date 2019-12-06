% DOWNGRADE(8) User Manuals
% Patrick Brisbin <pbrisbin@gmail.com>
% March 2019

# SYNOPSIS

**downgrade** [*PACKAGE*, *...*] [*--* [*PACMAN OPTIONS*]]

# DESCRIPTION

Downgrade Arch Linux packages.

# OUTPUT

Just calling `downgrade package` will lead to the following output:

*Example:*

    Available packages:

    -   1)  terraform    0.11.11  2  x86_64  (remote)
    -   2)  terraform    0.11.12  1  x86_64  (local)
    +   3)  terraform    0.11.13  1  x86_64  (remote)
    +   4)  terraform    0.11.13  1  x86_64  (local)
    -   5)  terraform    0.12.0   1  x86_64  (remote)
    -   6)  terraform    0.12.0   1  x86_64  (local)
        7)  terraform    0.12.1   1  x86_64  (remote)

    select a package by number:

The columns have the following meaning:

*indicator*
  Possible values: -, +
  
  \- indicates, that the version was already once installed.
  
  \+ indicates the currently installed version.

*enumeration*
  An enumeration of the entries for selection.

*package name*
  The name of the package.

*package version*
  The version of the package as noted in the A.L.A.

*package release*
  The release of the package as noted in the A.L.A.

*architecture*
  The architecture of the package as noted in the A.L.A.

*location*

  Possible values: (remote), (local)

  If you have already downloaded this version, it will show *local*.
  *remote* indicates that the version is available on the A.L.A.

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
