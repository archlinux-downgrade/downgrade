% DOWNGRADE(8) User Manual
%
% April 2020

# USAGE

**downgrade** [option...] \<pkg>\ [pkg...] [**\--** pacman_option...]

# DESCRIPTION

Downgrade Arch Linux packages.

# OUTPUT

Just calling **downgrade** on a package will lead to the following output:

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
  Possible values: {-|+}

  \- indicates that the version was previously installed.

  \+ indicates the currently installed version.

*enumeration*
  An enumeration of the entries for selection.

*package-name*
  The name of the package.

*package-version*
  The version of the package in cache or ALA.

*package-release*
  The release of the package in cache or ALA.

*architecture*
  The architecture of the package in cache or ALA.

*location*
  Possible values: {(remote)|(local)}

  If you have already downloaded this version, it will show *local*.\
  *remote* indicates that the version is available on the ALA.

# OPTIONS

**\--pacman** *\<command\>*\

> Pacman command, default is *pacman*.

**\--pacman-conf** *\<path\>*\
  
> Pacman configuration file, default is */etc/pacman.conf*.

**\--pacman-cache** *\<path\>*\

> Pacman cache directory or directories, default value is extracted from pacman configuration file, or otherwise defaults to */var/cache/pacman/pkg*. Multiple cache directories can be supplied as space-separated paths.

**\--pacman-log** *\<path\>*\

> Pacman log file, default value is extracted from pacman configuration file, or otherwise defaults to */var/log/pacman.log*.

**\--maxdepth** *\<integer\>*\

> Maximum depth to search for cached packages, defaults to *1*.

**\--ala-url** *\<url\>*\
	
> Location of an ALA server, default is *https://archive.archlinux.org*.

**\--ala-only**\

> Search ALA only.

**\--cached-only**\

> Search local cache only.

**\--nosudo**\

> Do not use `sudo(8)` even when available, use `su(1)` always.

## PACMAN OPTIONS

As per the usage syntax, any options supplied after the **\--** character sequence will be treated as pacman options.

## DEFAULT BEHAVIORS

By default, **downgrade** will search both local caches and the ALA.

If only one package with its corresponding location matches, the package will be installed without further prompt from the user.

# VERSION FILTERING

**downgrade** allows the use of the following version-filtering operators: **=**, **=~**, **<=**, **>=**, **<** and **>**. Note that **=~** represents a regex match operator.

# EXIT CODES

**downgrade** will stop further processing and exit non-zero if it encounters any of
the following scenarios for any of its arguments:

- No argument value(s) supplied where necessary
- No package(s) found
- Package(s) found, but an invalid selection was made
- `pacman -U` returned non-zero
- Unexpected error when handling `IgnorePkg` additions

# SEE ALSO

**pacman**(8), **vercmp(8)**, **sudo**(8), **pacman.conf**(5), **find**(1), **su**(1).

# BUGS

Open a GitHub issue on *https://github.com/pbrisbin/downgrade*.

# AUTHORS

* Patrick Brisbin <pbrisbin@gmail.com>\
* Atreya Shankar <shankar.atreya@gmail.com>
