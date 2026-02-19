  $ source "$TESTDIR/../helper.sh"
  > PACMAN_LOG=/dev/null

Detects yay cache when present

  $ fake_home=$(mktemp -d)
  > mkdir -p "$fake_home/.cache/yay"
  > get_real_user_home() { echo "$fake_home"; }
  > detect_aur_caches
  /tmp/*/yay (glob)
  [1]

Detects paru cache when present

  $ fake_home=$(mktemp -d)
  > mkdir -p "$fake_home/.cache/paru/clone"
  > get_real_user_home() { echo "$fake_home"; }
  > detect_aur_caches
  /tmp/*/paru/clone (glob)

Detects both when both present

  $ fake_home=$(mktemp -d)
  > mkdir -p "$fake_home/.cache/yay"
  > mkdir -p "$fake_home/.cache/paru/clone"
  > get_real_user_home() { echo "$fake_home"; }
  > detect_aur_caches
  /tmp/*/yay (glob)
  /tmp/*/paru/clone (glob)

Returns nothing when neither present

  $ fake_home=$(mktemp -d)
  > get_real_user_home() { echo "$fake_home"; }
  > result=$(detect_aur_caches)
  > test -z "$result" && echo "empty"
  empty

Returns nothing when home is empty

  $ get_real_user_home() { :; }
  > result=$(detect_aur_caches)
  > test -z "$result" && echo "empty"
  empty
