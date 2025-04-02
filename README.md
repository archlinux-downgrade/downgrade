# Downgrade

[![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/archlinux-downgrade/downgrade?label=release&logo=github&color=brightgreen)](https://github.com/archlinux-downgrade/downgrade/releases)
[![AUR version](https://img.shields.io/aur/version/downgrade?logo=Arch%20Linux&color=brightgreen)](https://aur.archlinux.org/packages/downgrade/)
[![CI](https://github.com/archlinux-downgrade/downgrade/actions/workflows/ci.yml/badge.svg)](https://github.com/archlinux-downgrade/downgrade/actions/workflows/ci.yml)
[![gitlocalized ](https://gitlocalize.com/repo/4232/whole_project/badge.svg)](https://gitlocalize.com/repo/4232/whole_project?utm_source=badge)

Eases downgrading packages in Arch Linux.

## Installation

Install via the [AUR](https://aur.archlinux.org/packages/downgrade/).

## Usage

```
Usage: downgrade [option...] <pkg> [pkg...] [-- pacman_option...]

Options:
  --pacman        <command>
                  pacman command to use, defaults to "pacman"
  --pacman-conf   <path>
                  pacman configuration file, defaults to "/etc/pacman.conf"
  --pacman-cache  <path>
                  pacman cache directory,
                  default value(s) taken from pacman configuration file,
                  or otherwise defaults to "/var/cache/pacman/pkg"
  --pacman-log    <path>
                  pacman log file,
                  default value taken from pacman configuration file,
                  or otherwise defaults to "/var/log/pacman.log"
  --maxdepth      <integer>
                  maximum depth to search for cached packages, defaults to 1
  --ala-url       <url>
                  location of ALA server, defaults to "https://archive.archlinux.org"
  --ala-only      only use ALA server
  --cached-only   only use cached packages
  --ignore        <prompt|always|never>
                  whether to add packages to IgnorePkg
  --latest        pick latest matching version
  --oldest        pick oldest matching version
  --prefer-cache  do not query ala if a matching package was found in cache
  --version       show downgrade version
  -h, --help      show help script

Note:
  Options after the -- characters will be treated as pacman options.
  See downgrade(8) for details.
```

Downgrade packages checking both local cache and the
[A.L.A.](https://wiki.archlinux.org/index.php/Arch_Linux_Archive), which is the
default behavior:

```
# downgrade foo bar
```

Downgrade packages, specifying multiple cache directories:

```
# downgrade --pacman-cache /path/to/cache --pacman-cache /path/to/other/cache foo bar
```

Downgrade a package with any of the following version-filtering operators `=`,
`==`, `=~`, `<=`, `>=`, `<` and `>`:

```
# downgrade 'foo=1.0.0-1' 'bar>=1.2.1-1' 'baz=~^1.2'
```

Downgrade a package, looking in only local cache:

```
# downgrade --cached-only foo
```

Downgrade a package, looking in only the A.L.A.:

```
# downgrade --ala-only foo
```

Noninteractively downgrade foo to 1.0.0-1

```
# downgrade --latest --prefer-cache --ignore never 'foo=1.0.0-1'
```

## Configuration

Command-line options can be set persistently in
`/etc/xdg/downgrade/downgrade.conf`.

## Development & Testing

Install `just` and `cram`: `pacman -S just python-cram`.

```console
just test
```

## Release

If your change is meant to trigger release, use a [conventional-commit][]
prefix in your commit message:

[contentional-commit]: https://www.conventionalcommits.org/en/v1.0.0/#summary

1. `fix:` to trigger a patch release,
1. `feat:` to trigger minor, or
1. `feat!:` to trigger major

When such a commit is merged to `main`, a new GitHub release will be prepared.

Then, the following steps must be done manually (for now):

```sh
git clone ssh://aur@aur.archlinux.org/downgrade /tmp/downgrade
cd /tmp/downgrade

vim PKGBUILD # update `pkgver`

updpkgsums
makepkg --printsrcinfo >.SRCINFO
makepkg --syncdeps --install --force # to test

git add .SRCINFO PKGBUILD
git commit -m 'Release vX.X.X'
git push
```

---

[CHANGELOG](./CHANGELOG.md) | [LICENSE](./LICENSE)
