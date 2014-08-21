  $ source "$TESTDIR/helper.sh"

Echos back the package name if it exists

  $ touch "$TMP/foo.pkg"
  > download_when_remote "$TMP/foo.pkg"; echo
  /tmp/cramtests-*/tmp/foo.pkg (glob)

Returns 1 if the file does not exist

  $ download_when_remote /foo/bar.pkg
  [1]

Downloads and echos back url arguments as their basename

  $ curl() { printf "downloaded content\n"; }
  > download_when_remote 'http://foo/bar.pkg'; echo
  > cat bar.pkg; rm bar.pkg
  bar.pkg
  downloaded content

Returns 1 if the download fails

  $ curl() { return 1; }
  > download_when_remote 'http://foo/bar.pkg'
  [1]

Cleans up if the download fails

  $ curl() { return 1; }
  > download_when_remote 'http://foo/bar.pkg'
  > [ -f bar.pkg ]
  [1]
