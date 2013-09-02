NAME    = downgrade
VERSION = 4.2
RELEASE = 1
AUTHOR  = pbrisbin
URL     = https://github.com/$(AUTHOR)/$(NAME)

PREFIX ?= /usr/local

pkgver:
	sed -i "s/^pkgver=.*/pkgver=$(VERSION)/" PKGBUILD
	sed -i "s/^pkgrel=.*/pkgrel=$(RELEASE)/" PKGBUILD

md5sums:
	sed -i '/^md5sums=.*/,$$d' PKGBUILD
	makepkg --geninteg --clean >> PKGBUILD

distcheck: pkgver md5sums
	makepkg --install --clean
	rm $(NAME)-$(VERSION)-$(RELEASE)-any.pkg.tar.xz

dist: pkgver md5sums
	makepkg --source --clean
	git commit -am "Releasing $(VERSION)-$(RELEASE)"
	git tag -a -m v$(VERSION) v$(VERSION)

clean:
	rm -f $(NAME)-$(VERSION)-$(RELEASE).src.tar.gz

.PHONY: dist distcheck md5sums pkgver clean
