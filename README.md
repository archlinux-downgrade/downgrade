# Downgrade

[![CircleCI](https://circleci.com/gh/pbrisbin/downgrade.svg?style=svg)](https://circleci.com/gh/pbrisbin/downgrade)

Eases downgrading packages in Arch Linux.

## Installation

Install via the [AUR](https://aur.archlinux.org/packages/downgrade/).

## Usage

Downgrade some packages, checking both local cache and the [A.L.A.][ala]:

[ala]: https://wiki.archlinux.org/index.php/Arch_Linux_Archive

```
$ downgrade foo bar
```

Downgrade a package, looking in only local cache:

```
$ DOWNGRADE_FROM_ALA=0 downgrade foo
```

Downgrade a package, looking in only the A.L.A.:

```
$ DOWNGRADE_FROM_CACHE=0 downgrade foo
```

Downgrade a package, looking only in local cache, and favoring `su` over 
`sudo` even when `sudo` is available:

```
$ DOWNGRADE_FROM_ALA=0 DOWNGRADE_NOSUDO=1 downgrade foo
```

## Development & Testing

Install cram: https://aur.archlinux.org/packages/cram/

```
make test
```

---

[CHANGELOG](./CHANGELOG.md) | [LICENSE](./LICENSE)
