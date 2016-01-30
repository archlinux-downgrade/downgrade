  $ source "$TESTDIR/helper.sh"

Returns 1 if the argument was not a URL

  $ download_when_remote /foo/bar.pkg
  [1]

Downloads the argument and its signature if it was a URL

  $ download_when_remote "https://archive.archlinux.org/packages/f/firefox/firefox-44.0-1-x86_64.pkg.tar.xz"
  > ls
  firefox-44.0-1-x86_64.pkg.tar.xz
  firefox-44.0-1-x86_64.pkg.tar.xz.sig
