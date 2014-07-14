  $ source "$TESTDIR/helper.sh"
  > export PACMAN_CONF="$CRAMTMP/pacman.conf"
  > sudo() { "$@"; } # just do it

Adds the package to IgnorePkg

  $ echo 'IgnorePkg = foo bar' > "$PACMAN_CONF"
  > echo 'y' | prompt_to_ignore 'baz'
  > cat "$PACMAN_CONF"
  
  add baz to IgnorePkg? [y/n] 
  IgnorePkg = foo bar baz

Uncomments a commented line before adding

  $ echo '#IgnorePkg = foo bar' > "$PACMAN_CONF"
  > echo 'y' | prompt_to_ignore 'baz'
  > cat "$PACMAN_CONF"
  
  add baz to IgnorePkg? [y/n] 
  IgnorePkg = foo bar baz

  $ echo '# IgnorePkg  = foo' > "$PACMAN_CONF"
  > echo 'y' | prompt_to_ignore 'baz'
  > cat "$PACMAN_CONF"
  
  add baz to IgnorePkg? [y/n] 
  IgnorePkg  = foo baz

Does nothing when present

  $ echo 'IgnorePkg = foo bar baz' > "$PACMAN_CONF"
  > echo 'y' | prompt_to_ignore 'bar'
  > cat "$PACMAN_CONF"
  IgnorePkg = foo bar baz

Does nothing when told no

  $ echo 'IgnorePkg = foo bar' > "$PACMAN_CONF"
  > echo 'n' | prompt_to_ignore 'baz'
  > cat "$PACMAN_CONF"
  
  add baz to IgnorePkg? [y/n] 
  IgnorePkg = foo bar
