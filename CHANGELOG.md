## [Ongoing](https://github.com/archlinux-downgrade/downgrade/compare/v11.3.0...main)

See [issues](https://github.com/archlinux-downgrade/downgrade/issues)

## [v11.3.0](https://github.com/archlinux-downgrade/downgrade/compare/v11.2.1...v11.3.0)

- [NEW] Add `--ignore` option to control ignore behavior (@lilydjwg)
- [NEW] Zsh completion now uses cache (@lilydjwg)
- [FIX] zh_CN translations now have spaces between Chinese and English (@lilydjwg)
- [FIX] Fix typo in ZSH completions (@felixonmars)

## [v11.2.1](https://github.com/archlinux-downgrade/downgrade/compare/v11.2.0...v11.2.1)

- [FIX] Patch internal variables in `Makefile` to avoid variable-name conflicts

## [v11.2.0](https://github.com/archlinux-downgrade/downgrade/compare/v11.1.0...v11.2.0)

- [NEW] Extract handling of `IgnorePkg` to separate `pacignore` script

## [v11.1.0](https://github.com/archlinux-downgrade/downgrade/compare/v11.0.0...v11.1.0)

- [FIX] Use first architecture in case multiple are found
- [FIX] Add additional measure for updating `IgnorePkg` directive
- [FIX] Catch and convert `sed` error messages on invalid input

## [v11.0.0](https://github.com/archlinux-downgrade/downgrade/compare/v10.1.1...v11.0.0)

- [NEW] Use `fzf` as a TUI for interactive `downgrade`
- [FIX] More descriptive error message when no results found
- [FIX] Add more information on non-zero exit codes in `mandoc`

## [v10.1.1](https://github.com/archlinux-downgrade/downgrade/compare/v10.1.0...v10.1.1)

- [FIX] Resolve `DOWNGRADE_ARCH` option automatically using `pacman-conf` command
- [NEW] Update test cases to reflect 32-bit architectures
- [NEW] Translate Circle setup to GitHub Actions

## [v10.1.0](https://github.com/archlinux-downgrade/downgrade/compare/v10.0.0...v10.1.0)

- [NEW] Add `--version` flag and hold version information inside `downgrade`
- [NEW] Add `==` version comparison operator as alias of existing `=` operator
- [FIX] Correct configuration file paths in readme and mandoc
- [FIX] Update GitHub issue/PR templates with version checking

## [v10.0.0](https://github.com/archlinux-downgrade/downgrade/compare/v9.0.0...v10.0.0)

- [NEW] Introduction of a system-wide downgrade configuration file
- [NEW] Ensure that certain arrays inside `downgrade` are unique
- [FIX] Modify downgrade menu with location of local cache directories
- [FIX] Supplement downgrade menu with upstream package repository
- [FIX] Remove architecture column from downgrade menu display
- [FIX] Expand zsh autocompletions with `pacman -Ssq`
- [FIX] Remove fish autocompletions on `make uninstall`

## [v9.0.0](https://github.com/archlinux-downgrade/downgrade/compare/v8.1.1...v9.0.0)

- [NEW] Now accepts multiple cache directory options
- [NEW] Removal of --nosudo CLI option, downgrade now expects root privileges

## [v8.1.1](https://github.com/archlinux-downgrade/downgrade/compare/v8.1.0...v8.1.1)

- [NEW] Addition of autocompletion script for `fish` (@Jakeler)

## [v8.1.0](https://github.com/archlinux-downgrade/downgrade/compare/v8.0.0...v8.1.0)

- [FIX] Clarify default option (No) in IgnorePkg prompt (@132ikl)
- [NEW] Use find -L to handle symlinks in Pacman cache
- [FIX] Improve error-handling of un-recognized options

## [v8.0.0](https://github.com/archlinux-downgrade/downgrade/compare/v7.0.0...v8.0.0)

- [NEW] Options for Pacman config, cache, and find -maxdepth
- [FIX] Version bound filtering with = now means =, added =~ for regex

## [v7.0.0](https://github.com/archlinux-downgrade/downgrade/compare/v6.3.0...v7.0.0)

- [NEW] Version bound handling by parsing logical =,>,<,>= and <= operators
- [NEW] Handling basic version conflicts during downgrading
- [FIX] Remove --arch option and corresponding logic due to redundancy
- [NEW] Handling hard dependencies during downgrading
- [FIX] Respect PREFIX when installing locale files

## [v6.3.0](https://github.com/archlinux-downgrade/downgrade/compare/v6.1.0...v6.3.0)

- [NEW] Replace environmental variables with command line arguments/options
- [FIX] Updating locales to reflect new keys

## [v6.1.0](https://github.com/archlinux-downgrade/downgrade/compare/v6.0.0...v6.1.0)

- [NEW] Render "+" for currently installed, "-" for previously installed
  (@Thomaash)
- [FIX] Tweak usage formatting to follow POSIX spec

## [v6.0.0](https://github.com/archlinux-downgrade/downgrade/compare/v5.4.0...v6.0.0)

- [NEW] Render results one page at a time
- [NEW] Render an asterisk next to previously-installed versions
- [NEW] Prefix most configuration variables with `DOWNGRADE_`
- [FIX] Fix conversion of legacy `ARM_` variables
- [NEW] Default missing `CacheDir` sensibly
- [NEW] Download packages to system cache directory

## [v5.4.0](https://github.com/archlinux-downgrade/downgrade/compare/v5.3.0...v5.4.0)

- [FIX] `ARM_URL` in documentation (@andrewcchen)
- [NEW] Spanish translation (@miachm)
- [NEW] Russian translation (@7up4)
- [NEW] Accept version in search term and avoid prompting

## [v5.3.0](https://github.com/archlinux-downgrade/downgrade/compare/v5.2.3...v5.3.0)

- [FIX] Sort using `pacsort`
- [FIX] Correctly append to `pacman.conf` when `IgnorePkg` not present
- [FIX] Correctly find packages in A.R.M HTML content

## [v5.2.3](https://github.com/archlinux-downgrade/downgrade/compare/v5.2.2...v5.2.3)

- [FIX] Handling of `+` in URL-decoding

## [v5.2.2](https://github.com/archlinux-downgrade/downgrade/compare/v5.2.1...v5.2.2)

- [NEW] URL-decode package names

## [v5.2.1](https://github.com/archlinux-downgrade/downgrade/compare/v5.2.0...v5.2.1)

- [FIX] Also search for `-any` packages

## [v5.2.0](https://github.com/archlinux-downgrade/downgrade/compare/v5.1.5...v5.2.0)

- [FIX] Stop outputting corrupt `curl` progress
- [FIX] Don't rely on repo-arm.archlinuxcn.org

## [v5.1.5](https://github.com/archlinux-downgrade/downgrade/compare/v5.1.4...v5.1.5)

- [FIX] French translation of "Available packages:"

## [v5.1.4](https://github.com/archlinux-downgrade/downgrade/compare/v5.1.3...v5.1.4)

- [NEW] Download package signatures (@anthraxx)

## [v5.1.3](https://github.com/archlinux-downgrade/downgrade/compare/v5.1.2...v5.1.3)

- [FIX] Correct install location of completions (@thiagowfx)

## [v5.1.2](https://github.com/archlinux-downgrade/downgrade/compare/v5.1...v5.1.2)

- [NEW] Portuguese (Brazilian) translation (@thiagowfx)

## [v5.1](https://github.com/archlinux-downgrade/downgrade/compare/v5.0.3...v5.1)

- [NEW] Accept and forward arbitrary options for `pacman -U`
- [NEW] Simplified Chinese translation (@entertainyou)
- [FIX] Handling of missing or commented `IgnorePkg`

## [v5.0.3](https://github.com/archlinux-downgrade/downgrade/compare/v5.0.1...v5.0.3)

- [FIX] Bash completion

## [v5.0.1](https://github.com/archlinux-downgrade/downgrade/compare/v4.2.4...v5.0.1)

_NOTE_: This version was a complete rewrite.

- [CHANGED] Replace options with environment variables

## [v4.2.4](https://github.com/archlinux-downgrade/downgrade/compare/v4.2.3...v4.2.4)

- [NEW] Handle `IgnorePkg` even when commented

## [v4.2.2](https://github.com/archlinux-downgrade/downgrade/compare/v4.2...v4.2.3)

- [NEW] Add man-page
- [NEW] Add Bash and Zsh completion
- [FIX] Messaging on incorrect architecture

## [v4.2](https://github.com/archlinux-downgrade/downgrade/compare/v4.1...v4.2)

- [FIX] URL-encode requests

## [v4.1](https://github.com/archlinux-downgrade/downgrade/compare/v4.0...v4.1)

- [NEW] Respect configured `CacheDir`

## [v4.0](https://github.com/archlinux-downgrade/downgrade/compare/v3.3-1...v4.0)

- [NEW] Localization (@gymka)
- [NEW] Lithuanian translation (@gymka)
- [NEW] Norwegian Bokmål and Norwegian Nynorsk translations (@hauk142)

## [v3.3-1](https://github.com/archlinux-downgrade/downgrade/compare/v3.2-2...v3.3-1)

- [CHANGED] Depend on `curl`, not `wget`

## [v3.2-2](https://github.com/archlinux-downgrade/downgrade/compare/v3.1-1...v3.2-2)

- [NEW] Prompt to ignore packages

## [v3.1-1](https://github.com/archlinux-downgrade/downgrade/tree/v3.1-1)

This is the first version at which we begin tracking changes.
