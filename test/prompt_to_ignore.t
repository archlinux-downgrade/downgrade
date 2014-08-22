  $ source "$TESTDIR/helper.sh"
  > PACMAN_CONF="$CRAMTMP/pacman.conf"
  > sudo() { "$@"; } # just do it
  > ignore() { yes | prompt_to_ignore "$@" >/dev/null; }

Adds the package to existing IgnorePkg entries

  $ printf "%s\n" \
  >   'OptionBefore' \
  >   'IgnorePkg = foo bar' \
  >   'OptionAfter' > "$PACMAN_CONF"
  > ignore baz; cat "$PACMAN_CONF"
  OptionBefore
  IgnorePkg = foo bar baz
  OptionAfter

Handles whitespace accordingly

  $ printf "%s\n" \
  >   'OptionBefore' \
  >   '  IgnorePkg = foo bar' \
  >   'OptionAfter' > "$PACMAN_CONF"
  > ignore baz; cat "$PACMAN_CONF"
  OptionBefore
    IgnorePkg = foo bar baz
  OptionAfter

Accepts multiple arguments

  $ echo 'IgnorePkg = foo bar' > "$PACMAN_CONF"
  > ignore baz bat quix; cat "$PACMAN_CONF"
  IgnorePkg = foo bar baz bat quix

Adds an entry if existing is commented

  $ echo '#IgnorePkg =' > "$PACMAN_CONF"
  > ignore foo; cat "$PACMAN_CONF"
  #IgnorePkg =
  IgnorePkg = foo

Handles whitespace accordingly
  $ echo '#  IgnorePkg =' > "$PACMAN_CONF"
  > ignore foo; cat "$PACMAN_CONF"
  #  IgnorePkg =
  IgnorePkg = foo

Adds after last entry if multiple are commented

  $ printf "%s\n" \
  >   '#IgnorePkg = foo' \
  >   '#IgnorePkg = bar' > "$PACMAN_CONF"
  > ignore bat; cat "$PACMAN_CONF"
  #IgnorePkg = foo
  #IgnorePkg = bar
  IgnorePkg = bat

Affects the first uncommented entry if present

  $ printf "%s\n" \
  >   '#IgnorePkg = foo' \
  >   '#IgnorePkg = bar' \
  >   'IgnorePkg = baz' > "$PACMAN_CONF"
  > ignore bat; cat "$PACMAN_CONF"
  #IgnorePkg = foo
  #IgnorePkg = bar
  IgnorePkg = baz bat

Adds to end of file if no entry present

  $ printf "%s\n" "Option" "OtherOption" > "$PACMAN_CONF"
  > ignore foo; cat "$PACMAN_CONF"
  Option
  OtherOption
  IgnorePkg = foo

Does nothing when already present

  $ echo 'IgnorePkg = foo bar baz' > "$PACMAN_CONF"
  > ignore foo; cat "$PACMAN_CONF"
  IgnorePkg = foo bar baz

Does nothing when told no

  $ echo 'IgnorePkg = foo bar' > "$PACMAN_CONF"
  > echo n | prompt_to_ignore baz >/dev/null
  > cat "$PACMAN_CONF"
  IgnorePkg = foo bar
