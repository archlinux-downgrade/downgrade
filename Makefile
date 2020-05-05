PREFIX       ?= /usr/local
LOCALEPREFIX ?= $(PREFIX)/share/locale
MANPREFIX    ?= $(PREFIX)/share/man
PANDOC       ?= $(shell which pandoc)

setup:
	command -v cram   || aurget cram
	command -v vbump  || aurget vbump-git
	command -v pandoc || stack install pandoc

locale/downgrade.pot: downgrade
	xgettext \
		--from-code=utf-8 -L shell \
		--package-name=downgrade \
		--copyright-holder=$(AUTHOR) \
		-o $@ $<

downgrade.8: doc/downgrade.8.md
	$(PANDOC) --standalone --to man doc/downgrade.8.md -o doc/downgrade.8

man: downgrade.8

test:
	cram test

install:
	install -Dm755 downgrade $(DESTDIR)$(PREFIX)/bin/downgrade
	install -Dm644 doc/downgrade.8 $(DESTDIR)$(MANPREFIX)/man8/downgrade.8
	install -Dm644 completion/bash $(DESTDIR)$(PREFIX)/share/bash-completion/completions/downgrade
	install -Dm644 completion/zsh $(DESTDIR)$(PREFIX)/share/zsh/site-functions/_downgrade
	for po_file in locale/*.po; do \
	  locale="$$(basename "$$po_file" .po)"; \
	  mkdir -p "$(DESTDIR)$(LOCALEPREFIX)/$$locale/LC_MESSAGES/"; \
	  msgfmt "$$po_file" -o "$(DESTDIR)$(LOCALEPREFIX)/$$locale/LC_MESSAGES/downgrade.mo"; \
	done

uninstall:
	$(RM) $(DESTDIR)$(PREFIX)/bin/downgrade \
	  $(DESTDIR)$(MANPREFIX)/man8/downgrade.8 \
	  $(DESTDIR)$(PREFIX)/share/bash-completion/completions/downgrade \
	  $(DESTDIR)$(PREFIX)/share/zsh/site-functions/_downgrade \
	  $(DESTDIR)$(LOCALEPREFIX)/*/LC_MESSAGES/downgrade.mo

.PHONY: setup test install uninstall

.PHONY: release.major
release.major: VERSION=$(shell git tag | vbump major | sed 's/^v//')
release.major: release

.PHONY: release.minor
release.minor: VERSION=$(shell git tag | vbump minor | sed 's/^v//')
release.minor: release

.PHONY: release.match
release.patch: VERSION=$(shell git tag | vbump patch | sed 's/^v//')
release.patch: release

.PHONY: release
release: test
	[ -n "$(VERSION)" ]
	git tag -s -m v$(VERSION) v$(VERSION)
	git push --follow-tags
	aur-release downgrade "$(VERSION)"
