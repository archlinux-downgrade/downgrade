# Downgrade

[![CircleCI](https://circleci.com/gh/pbrisbin/downgrade.svg?style=shield)](https://circleci.com/gh/pbrisbin/downgrade)
[![gitlocalized ](https://gitlocalize.com/repo/4232/whole_project/badge.svg)](https://gitlocalize.com/repo/4232/whole_project?utm_source=badge)

Eases downgrading packages in Arch Linux.

## Installation

Install via the [AUR](https://aur.archlinux.org/packages/downgrade/).

## Usage

```
Usage: downgrade [option...] <pkg> [pkg...] [-- pacman_option...]

  Options:
    --pacman <command>
                    pacman command to use, defaults to "pacman"
    --pacman-conf <file-path>
                    pacman configuration file, defaults to "/etc/pacman.conf"
    --arch <architecture>
                    target architecture, defaults to output of "uname -m"
    --ala-url <url>
                    location of ALA server, defaults to "https://archive.archlinux.org"
    --ala-only      only use ALA server
    --cached-only   only use cached packages
    --nosudo        do not use sudo even when available, use su
    -h, --help      show help script

  Note:
    Options after the -- characters will be treated as pacman options.
    See downgrade(8) for details.
```

Downgrade packages checking both local cache and the
[A.L.A.](https://wiki.archlinux.org/index.php/Arch_Linux_Archive), which is the
default behavior.

```
$ downgrade foo bar
```

Downgrade a package, looking in only local cache:

```
$ downgrade --cached-only foo
```

Downgrade a package, looking in only the A.L.A.:

```
$ downgrade --ala-only foo
```

Downgrade a package, looking only in local cache, and favoring `su` over `sudo`
even when `sudo` is available:

```
$ downgrade --cached-only --nosudo foo
```

## Development & Testing

Install cram: https://aur.archlinux.org/packages/cram/

```
make test
```

---

[CHANGELOG](./CHANGELOG.md) | [LICENSE](./LICENSE)
