  $ source "$TESTDIR/../helper.sh"

Test that quotation marks are respected while reading from the downgrade configuration file and that no commands are executed with eval

  $ read_downgrade_conf conf_args
  > wc -l < "$DOWNGRADE_CONF"
  > echo "${#conf_args[@]}"
  > echo "${conf_args[0]}"
  > echo "${conf_args[1]}"
  > echo "${conf_args[3]}"
  > echo "${conf_args[5]}"
  > echo "${conf_args[7]}"
  15
  16
  --pacman
  $(echo pacman)
  /path/with/one/ /space
  /path/with/two/ / /spaces
  /path/with/no/space

Test that an empty configuration file returns an empty conf_args array

  $ DOWNGRADE_CONF="$SRCDIR/test/conf/downgrade_empty.conf"
  > read_downgrade_conf conf_args
  > wc -l < "$DOWNGRADE_CONF"
  > echo "${#conf_args[@]}"
  14
  0
