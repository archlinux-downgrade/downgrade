% DOWNGRADE(8) User Manual

# USAGE

**downgrade** [option...] \<pkg>\ [pkg...] [**\--** pacman_option...]

# DESCRIPTION

Downgrade Arch Linux packages.

# OUTPUT

Calling **downgrade** on a package will lead to the following output:

_Example:_

    -  1)  terraform    0.11.11  2  remote
    -  2)  terraform    0.11.12  1  /var/cache/pacman/pkg
    +  3)  terraform    0.11.13  1  remote
    +  4)  terraform    0.11.13  1  /var/cache/pacman/pkg
    -  5)  terraform    0.12.0   1  remote
    -  6)  terraform    0.12.0   1  /var/cache/pacman/pkg
       7)  terraform    0.12.1   1  remote

    Available packages (community):
    7/7
    >

The columns have the following meaning:

_indicator_ Possible values: {-|+}

\- indicates that the version was previously installed.

\+ indicates the currently installed version.

_enumeration_ An enumeration of the entries for selection.

_package-name_ The name of the package.

_package-epoch_ The epoch of the package in cache or ALA.

_package-version_ The version of the package in cache or ALA.

_package-release_ The release of the package in cache or ALA.

_location_ Possible values: {remote|/path/to/cache/dir}

If you have already downloaded this version, it will show the cache directory
where the package is located. _remote_ indicates that the version is available
on the ALA.

# OPTIONS

**\--pacman** _\<command\>_\

> Pacman command, default is _pacman_.

**\--pacman-conf** _\<path\>_\

> Pacman configuration file, default is _/etc/pacman.conf_.

**\--pacman-cache** _\<path\>_\

> Pacman cache directory, default value(s) taken from pacman configuration file,
> or otherwise defaults to _/var/cache/pacman/pkg_. This option can be specified
> multiple times to indicate multiple cache directories.

**\--pacman-log** _\<path\>_\

> Pacman log file, default value is extracted from pacman configuration file, or
> otherwise defaults to _/var/log/pacman.log_.

**\--maxdepth** _\<integer\>_\

> Maximum depth to search for cached packages, defaults to _1_.

**\--ala-url** _\<url\>_\

> Location of an ALA server, default is *https://archive.archlinux.org*.

**\--ala-only**\

> Search ALA only.

**\--cached-only**\

> Search local cache only.

**\--ignore** _\<prompt|always|never\>_\

> Whether to add packages to IgnorePkg, default is _prompt_.

**\--latest | \--oldest**\

> Never prompt for version or location, automatically pick the most up to
> date/most out of date version. Allows for noninteractive downgrades when
> used in conjunction with `--ignore`.

**\--prefer-cache**\

> If a package matching the version filter is found in the cache, skip querying
> ala. Unlike `--cached-only`, `--prefer-cache` does query ala if no package could
> be matched in cache.

**\--version**\

> Show downgrade version.

**\-h, \--help**\

> Show help script.

## CONFIGURATION FILE

Command-line options can be set persistently in
**/etc/xdg/downgrade/downgrade.conf**. Note that these options are parsed first
by **downgrade**, followed by any other command-line options provided by the
user.

## PACMAN OPTIONS

As per the usage syntax, any options supplied after the **\--** character
sequence will be treated as pacman options.

## DEFAULT BEHAVIORS

By default, **downgrade** will search both local caches and the ALA.

If only one package with its corresponding location matches, the package will be
installed without further prompt from the user.

# VERSION FILTERING

**downgrade** allows the use of the following version-filtering operators:
**=**, **==**, **=~**, **<=**, **>=**, **<** and **>**. Note that **=~**
represents a regex match operator and **=**/**==** are aliases.

# EXIT CODES

**downgrade** will stop further processing and exit non-zero if it encounters
any of the following scenarios for any of its arguments:

- Execution from non-root user
- No argument value(s) supplied where necessary
- No package(s) found
- Package(s) found, but an invalid selection was made
- `pacman -U` returned non-zero
- Unexpected error when handling `IgnorePkg` additions

# SEE ALSO

**pacman**(8), **vercmp(8)**, **sudo**(8), **pacman.conf**(5), **find**(1),
**su**(1), **fzf**(1).

# BUGS

Open a GitHub issue on *https://github.com/archlinux-downgrade/downgrade*.

# AUTHORS

- Patrick Brisbin <pbrisbin@gmail.com>\
- Atreya Shankar <shankar.atreya@gmail.com>
