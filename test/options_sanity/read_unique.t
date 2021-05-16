  $ source "$TESTDIR/../helper.sh"

Check that relevant arrays are made unique if they contain elements, otherwise they should be left as empty arrays

  $ read_unique X x y y z y z
  > echo "${X[@]}"
  x y z
