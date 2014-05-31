NAME    = downgrade
VERSION = 5.0.3
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

test:
	cram test

release_aur:
	mkaurball
	aur-submit $(NAME)-$(VERSION)-$(RELEASE).src.tar.gz

release_git:
	git add PKGBUILD \
		downgrade \
		downgrade.8 \
		bash_completion \
		zsh_completion \
		*.po
	git commit -m "Releasing $(VERSION)-$(RELEASE)"
	git tag -a -m v$(VERSION) v$(VERSION)
	git push
	git push --tags

release: test man pkgver md5sums release_aur release_git clean

clean:
	rm -f $(NAME)-$(VERSION)-$(RELEASE).src.tar.gz
	rm -f $(NAME)-$(VERSION)-$(RELEASE)-any.pkg.tar.xz

.PHONY: test release release_aur release_git md5sums pkgver clean
