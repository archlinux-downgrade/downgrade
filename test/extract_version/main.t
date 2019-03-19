  $ source "$TESTDIR/../helper.sh"

It extracts epoch, version, release and architecture from path

  $ extract_version_parts foo '/tmp/pacman/cache/foo-1.1.pkg.tar.gz'
  
  1.1
  
  

  $ extract_version_parts foo '/tmp/pacman/cache/foo-7:1.1.pkg.tar.gz'
  7
  1.1
  
  

  $ extract_version_parts foo '/tmp/pacman/cache/foo-1.1-4.pkg.tar.gz'
  
  1.1
  4
  

  $ extract_version_parts foo '/tmp/pacman/cache/foo-1.1-4-aarch64.pkg.tar.gz'
  
  1.1
  4
  aarch64

  $ extract_version_parts foo 'http://repo-arm-download.archlinuxcn.org/extra/os/x86_64/foo-4.0-1-x86_64.pkg.tar.xz'
  
  4.0
  1
  x86_64

  $ extract_version_parts bar 'https://repo-arm-download.archlinuxcn.org/extra/os/i586/bar-2:3.7.245-13-i586.pkg.tar.gz'
  2
  3.7.245
  13
  i586

  $ extract_version_parts bar 'bar-2:3.7.245-13-i586.pkg.tar.gz'
  2
  3.7.245
  13
  i586

  $ extract_version_parts bar 'bar-2:3.7.245-13-i586.pkg.tar'
  2
  3.7.245
  13
  i586

  $ extract_version_parts test 'test-2:3.7.245-13-i586.pkg.tar.gz'
  2
  3.7.245
  13
  i586

  $ extract_version_parts kde-development-environment-meta 'http://mirror.archlinuxarm.org/armv7h/community/kde-development-environment-meta-20180909-1-any.pkg.tar.xz'
  
  20180909
  1
  any

  $ extract_version_parts aalib 'http://mirror.archlinuxarm.org/armv6h/extra/aalib-1.4rc5-13-armv6h.pkg.tar.xz'
  
  1.4rc5
  13
  armv6h

  $ extract_version_parts alacarte 'http://mirror.archlinuxarm.org/armv7h/extra/alacarte-3.11.91+12+g1bb265f-3-any.pkg.tar.xz'
  
  3.11.91+12+g1bb265f
  3
  any

  $ extract_version_parts agda 'http://mirror.archlinuxarm.org/armv7h/community/agda-2.5.99.20181017-4-armv7h.pkg.tar.xz'
  
  2.5.99.20181017
  4
  armv7h

  $ extract_version_parts adobe-source-code-pro-fonts 'http://mirror.archlinuxarm.org/armv6h/extra/adobe-source-code-pro-fonts-2.030ro+1.050it-5-any.pkg.tar.xz'
  
  2.030ro+1.050it
  5
  any

  $ extract_version_parts anthy 'https://jpn.mirror.pkgbuild.com/extra/os/x86_64/anthy-9100h-5-x86_64.pkg.tar.xz'
  
  9100h
  5
  x86_64

  $ extract_version_parts arduino-ctags 'https://jpn.mirror.pkgbuild.com/community/os/x86_64/arduino-ctags-5.8_arduino11-3-x86_64.pkg.tar.xz'
  
  5.8_arduino11
  3
  x86_64

  $ extract_version_parts broadcom-wl 'https://jpn.mirror.pkgbuild.com/community/os/x86_64/broadcom-wl-6.30.223.271-86-x86_64.pkg.tar.xz'
  
  6.30.223.271
  86
  x86_64

  $ extract_version_parts coxeter 'https://jpn.mirror.pkgbuild.com/community/os/x86_64/coxeter-git.20180226-2-x86_64.pkg.tar.xz'
  
  git.20180226
  2
  x86_64

  $ extract_version_parts ctags 'https://jpn.mirror.pkgbuild.com/extra/os/x86_64/ctags-1:r20181015+g45968eff-1-x86_64.pkg.tar.xz'
  1
  r20181015+g45968eff
  1
  x86_64

  $ extract_version_parts dialog 'https://jpn.mirror.pkgbuild.com/core/os/x86_64/dialog-1:1.3_20190211-1-x86_64.pkg.tar.xz'
  1
  1.3_20190211
  1
  x86_64

  $ extract_version_parts foomatic-db 'https://jpn.mirror.pkgbuild.com/extra/os/x86_64/foomatic-db-3:20190312-1-any.pkg.tar.xz'
  3
  20190312
  1
  any
