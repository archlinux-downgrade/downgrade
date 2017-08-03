  $ source "$TESTDIR/helper.sh"

It slices elements out of array arguments

  $ slice 0 2 a b c
  a
  b

It respects offset and limit

  $ slice 2 5 a b c d e f g h i
  c
  d
  e
  f
  g

It can slice fewer elements

  $ slice 3 10 a b c d e
  d
  e

It handles slicing past the array size

  $ slice 10 2 a b c
  [1]
