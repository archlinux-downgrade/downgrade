  $ source "$TESTDIR/../helper.sh"
  > PACMAN_LOG=/dev/null

Check if package name, operator and version can be separated

  $ touch "$TMP/foo.pkg"
  > search_packages() { printf "%s\n" "$TMP/foo.pkg"; }
  > main "foo=1.0.0-1" "bar<=1.0.0-1" "baz>=1.0.0-1"
  > main "bat<1.0.0-1" "bam>1.0.0-1"
  > printf "ignore: %s\n" "${to_ignore[@]}"
  > printf "install: %s\n" "${to_install[@]}"
  foo = 1.0.0-1
  bar <= 1.0.0-1
  baz >= 1.0.0-1
  bat < 1.0.0-1
  bam > 1.0.0-1
  ignore: foo
  ignore: bar
  ignore: baz
  ignore: bat
  ignore: bam
  install: /tmp/cramtests-*/tmp/foo.pkg (glob)
  install: /tmp/cramtests-*/tmp/foo.pkg (glob)
  install: /tmp/cramtests-*/tmp/foo.pkg (glob)
  install: /tmp/cramtests-*/tmp/foo.pkg (glob)
  install: /tmp/cramtests-*/tmp/foo.pkg (glob)
