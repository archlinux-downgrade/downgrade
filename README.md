# Downgrade

[![Build Status](https://travis-ci.org/pbrisbin/downgrade.svg?branch=master)](https://travis-ci.org/pbrisbin/downgrade)

Eases downgrading packages in Arch Linux.

## Examples

Downgrade some packages, checking both local cache and the A.R.M.:

```
$ downgrade foo bar
```

Downgrade some package to a specific version:

```
$ downgrade <package> [-v version]
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
