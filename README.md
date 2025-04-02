# Downgrade

[![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/archlinux-downgrade/downgrade?label=release&logo=github&color=brightgreen)](https://github.com/archlinux-downgrade/downgrade/releases)
[![AUR version](https://img.shields.io/aur/version/downgrade?logo=Arch%20Linux&color=brightgreen)](https://aur.archlinux.org/packages/downgrade/)
[![CI](https://github.com/archlinux-downgrade/downgrade/actions/workflows/ci.yml/badge.svg)](https://github.com/archlinux-downgrade/downgrade/actions/workflows/ci.yml)
[![gitlocalized ](https://gitlocalize.com/repo/4232/whole_project/badge.svg)](https://gitlocalize.com/repo/4232/whole_project?utm_source=badge)

Eases downgrading packages in Arch Linux.

## Installation

Install via the [AUR](https://aur.archlinux.org/packages/downgrade/).

## Usage

See [downgrade(8)](https://archlinux-downgrade.github.io/downgrade/downgrade.8).

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
