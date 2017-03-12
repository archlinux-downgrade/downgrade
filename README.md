# Downgrade

[![Build Status](https://travis-ci.org/pbrisbin/downgrade.svg?branch=master)](https://travis-ci.org/pbrisbin/downgrade)

Eases downgrading packages in Arch Linux.

## Installation

Install via the [AUR](https://aur.archlinux.org/packages/downgrade/).

## Usage

Downgrade some packages, checking both local cache and the A.R.M.:

```
$ downgrade foo bar
```

Downgrade a package, looking in only local cache:

```
$ NOARM=1 downgrade foo
```

Downgrade a package, looking in only the A.R.M.:

```
$ NOCACHE=1 downgrade foo
```

Downgrade a package, looking only in local cache, and favoring `su` over 
`sudo` even when `sudo` is available:

```
$ NOARM=1 NOSUDO=1 downgrade foo
```

## Development & Testing

Install cram: https://aur.archlinux.org/packages/cram/

```
make test
```

---

[CHANGELOG](./CHANGELOG.md) | [LICENSE](./LICENSE)
