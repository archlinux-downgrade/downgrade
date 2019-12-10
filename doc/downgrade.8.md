% DOWNGRADE(8) User Manuals % Patrick Brisbin <pbrisbin@gmail.com> % March 2019

# SYNOPSIS

**downgrade** [*PACKAGE*, *...*]_--_ [*PACMAN OPTIONS*]]

# DESCRIPTION

Downgrade Arch Linux packages.

# OUTPUT

Just calling `downgrade package` will lead to the following output:

_Example:_

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

_indicator_ Possible values: -, +

\- indicates, that the version was already once installed.

\+ indicates the currently installed version.

_enumeration_ An enumeration of the entries for selection.

_package name_ The name of the package.

_package version_ The version of the package in cache or A.L.A.

_package release_ The release of the package in cache or A.L.A.

_architecture_ The architecture of the package in cache or A.L.A.

_location_ Possible values: (remote), (local)

If you have already downloaded this version, it will show _local_. _remote_
indicates that the version is available on the A.L.A.

# ENVIRONMENT VARIABLES

_PACMAN_ The pacman command. Default is _pacman_.

_PACMAN_CONF_ Your pacman configuration file. Default is _/etc/pacman.conf_.

_PACMAN_CACHE_ Your package cache directory. Default is read from
`$PACMAN_CONF`, or set to _/var/pacman/pkg/_ when not found.

_PACMAN_LOG_ Your pacman log file. Default is read from `$PACMAN_CONF`, or set
to _/var/log/pacman.log_ when not found.

_DOWNGRADE_ARCH_ Target architecture. Default is determined by `uname -m`.

_DOWNGRADE_ALA_URL_ The location of an A.L.A. server. Default is
_https://archive.archlinux.org_.

_DOWNGRADE_FROM_ALA_ Search the A.L.A. Default is _1_.

_DOWNGRADE_FROM_CACHE_ Search your local cache. Default is _1_.

_DOWNGRADE_NOSUDO_ Do not use `sudo(8)` even when available, use `su(1)` always.
Default is _0_.

# EXIT CODES

Downgrade will stop further processing and exit non-zero if it encounters any of
the following scenarios for any of its arguments:

- No results found
- Results found, but you made an invalid selection
- `pacman -U` returned non-zero
- Unexpected error when handling `IgnorePkg` additions

# SEE ALSO

**pacman**(8), **pacman.conf**(5), **find**(1), **sudo**(8), **su**(1).
