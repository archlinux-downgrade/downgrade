  $ source "$TESTDIR/helper.sh"
  > cache=$(mktemp -d)
  > git clone -q "https://aur.archlinux.org/downgrade.git" "$cache/downgrade"
  > write_pacman_conf "[options]" "CacheDir = $cache"
  > export DOWNGRADE_FROM_GIT=1

List packages based on git tags

  $ search_git 'downgrade' | head -n 2
  /tmp/*/downgrade-5.1.3-0bdb507-any.gitpkg.tar.gz (glob)
  /tmp/*/downgrade-5.1.4-dee7bd9-any.gitpkg.tar.gz (glob)

Outputs appropriately for filter_packages

  $ search_git 'downgrade' | filter_packages 'downgrade' '=~' '^7' | head -n 1
  /tmp/*/downgrade-7.0.0-513f504-any.gitpkg.tar.gz (glob)
