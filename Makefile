NAME    = downgrade
VERSION = 5.0.2
RELEASE = 1
AUTHOR  = pbrisbin
URL     = https://github.com/$(AUTHOR)/$(NAME)

potfile: $(NAME)
	xgettext \
	  --from-code=utf-8 -L shell \
	  --package-name=downgrade \
	  --copyright-holder=$(AUTHOR) \
	  -o $(NAME).pot ./$(NAME)

pkgver:
	sed -i "s/^pkgver=.*/pkgver=$(VERSION)/" PKGBUILD
	sed -i "s/^pkgrel=.*/pkgrel=$(RELEASE)/" PKGBUILD

md5sums:
	sed -i '/^md5sums=.*/,$$d' PKGBUILD
	makepkg --geninteg --clean >> PKGBUILD

man: $(NAME).8

$(NAME).8: doc/$(NAME).8.md
	kramdown-man doc/$(NAME).8.md > $(NAME).8

distcheck: man pkgver md5sums
	makepkg --install --clean
	rm $(NAME)-$(VERSION)-$(RELEASE)-any.pkg.tar.xz

dist: man pkgver md5sums clean
	makepkg --source --clean
	git commit -am "Releasing $(VERSION)-$(RELEASE)" || true
	git tag -a -m v$(VERSION) v$(VERSION) || true

clean:
	rm -f $(NAME)-$(VERSION)-$(RELEASE).src.tar.gz

.PHONY: dist distcheck man md5sums pkgver clean
