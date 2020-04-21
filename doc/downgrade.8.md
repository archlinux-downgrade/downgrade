% DOWNGRADE(8) User Manual % % April 2020

# USAGE

**downgrade** [option...] \<pkg>\ [pkg...][**\--** pacman_option...]

# DESCRIPTION

Downgrade Arch Linux packages.

# OUTPUT

Just calling `downgrade` on a package will lead to the following output:

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

_indicator_ Possible values: {-|+}

\- indicates that the version was previously installed.

\+ indicates the currently installed version.

_enumeration_ An enumeration of the entries for selection.

_package-name_ The name of the package.

_package-version_ The version of the package in cache or ALA.

_package-release_ The release of the package in cache or ALA.

_architecture_ The architecture of the package in cache or ALA.

_location_ Possible values: {(remote)|(local)}

If you have already downloaded this version, it will show _local_.\
 _remote_ indicates that the version is available on the ALA.

# OPTIONS

## DOWNGRADE OPTIONS

**\--pacman** _\<command\>_\

> Pacman command, default is _pacman_.

**\--pacman-conf** _\<file-path\>_\

> Pacman configuration file, default is _/etc/pacman.conf_.

**\--arch** _\<architecture\>_\

> Target architecture, default is determined by `uname -m`.

**\--ala-url** _\<url\>_\

> Location of an ALA server, default is _https://archive.archlinux.org_.

**\--ala-only**\

> Search ALA only.

**\--cached-only**\

> Search local cache only.

**\--nosudo**\

> Do not use `sudo(8)` even when available, use `su(1)` always.

## PACMAN OPTIONS

As per the usage syntax, any options supplied after the **\--** character
sequence will be treated as pacman options.

## DEFAULT BEHAVIORS

By default, **downgrade** will search both local caches and the ALA.

The package cache directory is read from the pacman configuration file by
default, or set to _/var/pacman/pkg/_ when not found.

The pacman log file is read from the pacman configuration file by default, or
set to _/var/log/pacman.log_ when not found.

# EXIT CODES

Downgrade will stop further processing and exit non-zero if it encounters any of
the following scenarios for any of its arguments:

- No argument value(s) supplied where necessary
- No package(s) found
- Package(s) found, but an invalid selection was made
- `pacman -U` returned non-zero
- Unexpected error when handling `IgnorePkg` additions

# SEE ALSO

**pacman**(8), **pacman.conf**(5), **find**(1), **sudo**(8), **su**(1).

# BUGS

Open a GitHub issue on _https://github.com/pbrisbin/downgrade_.

# AUTHORS

- Patrick Brisbin <pbrisbin@gmail.com>\
- Atreya Shankar <shankar.atreya@gmail.com>
