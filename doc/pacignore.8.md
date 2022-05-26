% PACIGNORE(8) User Manual

# USAGE

**pacignore** ls [option...]\
**pacignore** {check|add|rm} [option...] \<pkg>\ [pkg...]

# DESCRIPTION

Ignore Arch Linux packages.

# SUBCOMMANDS

**ls** _\<subcommand\>_\

> List package(s) in the IgnorePkg directive.

**check** _\<subcommand\>_\

> Check if package(s) are included in the IgnorePkg directive.

**add** _\<subcommand\>_\

> Add package(s) to the IgnorePkg directive.

**rm** _\<subcommand\>_\

> Remove package(s) from the IgnorePkg directive.

# OPTIONS

**\-c** _\<path\>_\

> Pacman configuration file, default is _/etc/pacman.conf_.

**\-h**\

> Show help script

# EXIT CODES

**pacignore** will return non-zero if it encounters any of the following
scenarios:

- No argument value(s) supplied where necessary
- No package(s) supplied for **check**, **add** or **rm** subcommands
- Execution from non-root user for **add** and **rm** subcommands
- If any packages supplied to **check** subcommand are not included in the
IgnorePkg directive
- If any packages supplied to **rm** subcommand are not included in the
IgnorePkg directive
- If any packages supplied to **add** subcommand are already included in the
IgnorePkg directive

# SEE ALSO

**sudo**(8), **pacman.conf**(5), **su**(1).

# BUGS

Open a GitHub issue on *https://github.com/archlinux-downgrade/downgrade*.

# AUTHORS

- Patrick Brisbin <pbrisbin@gmail.com>\
- Atreya Shankar <shankar.atreya@gmail.com>
