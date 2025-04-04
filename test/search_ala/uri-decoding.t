  $ source "$TESTDIR/../helper.sh"

URL decoding packages

  $ DOWNGRADE_FROM_ALA=1 search_ala 'python-setuptools' | sort -rV
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-4.0.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-4.0-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-3.6-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-3.5.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-3.5-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-3.4.4-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-3.4.3-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-3.4.2-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-3.4.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-3.4-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-3.3-3-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-3.3-2-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-3.3-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-3.2-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-3.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-3.0.2-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-3.0-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-2.2-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-2.1.2-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-2.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-2.0.2-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-2.0.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-2.0-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:20.3.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:20.3-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:20.2.2-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:20.1.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:20.0-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:19.7-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:19.6.2-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:19.6.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:19.6-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:19.5-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:19.4-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:19.3-2-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:19.2-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:19.1.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:19.0-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:18.8.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:18.8-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:18.7.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:18.7-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:18.6.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:18.5-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:18.4-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:18.3.2-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:18.3.1-2-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:18.3.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:18.2-2-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:18.2-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:18.1-2-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:18.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:18.0.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:17.1.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:17.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:17.0-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:16.0-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:15.2-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:15.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:15.0-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:14.3.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:14.3-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:14.1.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:14.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:14.0-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:13.0.2-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:12.4-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:12.3-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:12.2-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:12.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:12.0.5-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:12.0.4-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:12.0.3-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:12.0.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:11.3.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:11.3-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:11.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:11.0-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:10.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:10.0.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:9.0.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:8.2.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:8.0.4-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:8.0.2-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:8.0.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:8.0-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:7.0-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:6.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:6.0.2-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:6.0.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:5.8-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:5.7-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:5.6-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:5.5.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:5.5-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:5.4.2-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:5.4.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:5.3-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:5.2-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:5.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1:5.0.1-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1.4.2-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1.3.2-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1.3-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1.1.6-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1.1.5-1-any.pkg.tar.xz
  https://archive.archlinux.org/packages/p/python-setuptools/python-setuptools-1.0-1-any.pkg.tar.xz

Regression 1


  $ DOWNGRADE_FROM_ALA=1 search_ala 'cairo'
  https://archive.archlinux.org/packages/c/cairo/cairo-1.16.0-2-x86_64.pkg.tar.xz
  https://archive.archlinux.org/packages/c/cairo/cairo-1.17.2+17+g52a7c79fd-1-x86_64.pkg.tar.xz
  https://archive.archlinux.org/packages/c/cairo/cairo-1.17.2+17+g52a7c79fd-2-x86_64.pkg.tar.xz

Regression 2
  $ DOWNGRADE_FROM_ALA=1 search_ala 'libc++'
  https://archive.archlinux.org/packages/l/libc++/libc++-11.0.0-2-x86_64.pkg.tar.zst
  https://archive.archlinux.org/packages/l/libc++/libc++-11.1.0-1-x86_64.pkg.tar.zst
  https://archive.archlinux.org/packages/l/libc++/libc++-12.0.0-1-x86_64.pkg.tar.zst
  https://archive.archlinux.org/packages/l/libc++/libc++-13.0.0-1-x86_64.pkg.tar.zst
  https://archive.archlinux.org/packages/l/libc++/libc++-13.0.1-1-x86_64.pkg.tar.zst
  https://archive.archlinux.org/packages/l/libc++/libc++-14.0.6-1-x86_64.pkg.tar.zst
  https://archive.archlinux.org/packages/l/libc++/libc++-15.0.6-1-x86_64.pkg.tar.zst
  https://archive.archlinux.org/packages/l/libc++/libc++-15.0.7-1-x86_64.pkg.tar.zst
  https://archive.archlinux.org/packages/l/libc++/libc++-15.0.7-2-x86_64.pkg.tar.zst
  https://archive.archlinux.org/packages/l/libc++/libc++-15.0.7-3-x86_64.pkg.tar.zst
  https://archive.archlinux.org/packages/l/libc++/libc++-16.0.6-1-x86_64.pkg.tar.zst
  https://archive.archlinux.org/packages/l/libc++/libc++-17.0.6-1-x86_64.pkg.tar.zst
  https://archive.archlinux.org/packages/l/libc++/libc++-18.1.8-1-x86_64.pkg.tar.zst
  https://archive.archlinux.org/packages/l/libc++/libc++-18.1.8-2-x86_64.pkg.tar.zst
  https://archive.archlinux.org/packages/l/libc++/libc++-18.1.8-3-x86_64.pkg.tar.zst
  https://archive.archlinux.org/packages/l/libc++/libc++-18.1.8-4-x86_64.pkg.tar.zst
  https://archive.archlinux.org/packages/l/libc++/libc++-19.1.6-1-x86_64.pkg.tar.zst
