  $ source "$TESTDIR/helper.sh"

Outputs its arguments as a numbered list

  $ present_packages foo bar baz
  Available packages:
  
     1) foo
     2) bar
     3) baz
  
  select a package by number:  (no-eol)

Retuns 1 if no arguments were given

  $ present_packages
  [1]

URL decodes package names

  $ present_packages \
  >   python-setuptools-1.0-1-any.pkg.tar.xz \
  >   python-setuptools-1%3A20.3-1-any.pkg.tar.xz \
  >   python-setuptools-1%3A20.2.2-1-any.pkg.tar.xz
  Available packages:
  
     1) python-setuptools-1.0-1-any.pkg.tar.xz
     2) python-setuptools-1:20.3-1-any.pkg.tar.xz
     3) python-setuptools-1:20.2.2-1-any.pkg.tar.xz
  
  select a package by number:  (no-eol)
