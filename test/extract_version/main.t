  $ source "$TESTDIR/../helper.sh"

It works on a package with only version

  $ extract_version_parts foo '/tmp/pacman/cache/foo-1.1.pkg.tar.gz'
  ,1.1,,

It works on a package with epoch:version-release

  $ extract_version_parts foo '/tmp/pacman/cache/foo-7:1.1.pkg.tar.gz'
  7,1.1,,

It works on a package with only version-release

  $ extract_version_parts foo '/tmp/pacman/cache/foo-1.1-4.pkg.tar.gz'
  ,1.1,4,

It works on a package with version-release-arch

  $ extract_version_parts foo '/tmp/pacman/cache/foo-1.1-4-aarch64.pkg.tar.gz'
  ,1.1,4,aarch64

It works on URLs

  $ extract_version_parts foo 'http://repo-arm-download.archlinuxcn.org/extra/os/x86_64/foo-4.0-1-x86_64.pkg.tar.xz'
  ,4.0,1,x86_64

  $ extract_version_parts bar 'https://repo-arm-download.archlinuxcn.org/extra/os/i586/bar-2:3.7.245-13-i586.pkg.tar.gz'
  2,3.7.245,13,i586

It works on basenames

  $ extract_version_parts bar 'bar-2:3.7.245-13-i586.pkg.tar.gz'
  2,3.7.245,13,i586

It works with odd version strings

  $ extract_version_parts alacarte 'http://mirror.archlinuxarm.org/armv7h/extra/alacarte-3.11.91+12+g1bb265f-3-any.pkg.tar.xz'
  ,3.11.91+12+g1bb265f,3,any
