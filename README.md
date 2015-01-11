# Downgrade

[![Build Status](https://travis-ci.org/pbrisbin/downgrade.svg?branch=master)](https://travis-ci.org/pbrisbin/downgrade)

Eases downgrading packages in Arch Linux.

## Examples

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

## Troubleshooting

If `downgrade` fails silently, it may be because the service which 
provides older packages is down. There's nothing I can do about this, 
but you can at least verify that that's the case:

- Run your command as `bash -x downgrade`
- Note the `curl` command it invokes
- Manually invoke that `curl` command without the `--fail --silent` 
  switches
- You should now see the actual problem

When this happens, we have nothing to do but wait. If it goes on too 
long, or appears that it'll never come back, we'll have to rewrite to 
use [other sources][issue].

[issue]: https://github.com/pbrisbin/downgrade/issues/21
