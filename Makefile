PREFIX    ?= /usr/local
MANPREFIX ?= $(PREFIX)/share/man
PANDOC    ?= $(shell which pandoc)

potfile: downgrade
	xgettext \
		--from-code=utf-8 -L shell \
		--package-name=downgrade \
		--copyright-holder=$(AUTHOR) \
		-o downgrade.pot ./downgrade

downgrade.8: doc/downgrade.8.md
	$(PANDOC) --standalone --to man doc/downgrade.8.md -o doc/downgrade.8

man: downgrade.8

test:
	cram test

install:
	install -Dm755 downgrade $(DESTDIR)/$(PREFIX)/bin/downgrade
	install -Dm644 doc/downgrade.8 $(DESTDIR)/$(MANPREFIX)/man8/downgrade.8
	install -Dm644 completion/bash $(DESTDIR)/$(PREFIX)/share/bash-completion/completions/downgrade
	install -Dm644 completion/zsh $(DESTDIR)/$(PREFIX)/share/zsh/site-functions/_downgrade

uninstall:
	$(RM) $(DESTDIR)/$(PREFIX)/bin/downgrade \
	  $(DESTDIR)/$(MANPREFIX)/man8/downgrade.8 \
	  $(DESTDIR)/$(PREFIX)/share/bash-completion/completions/downgrade \
	  $(DESTDIR)/$(PREFIX)/share/zsh/site-functions/_downgrade

.PHONY: test install uninstall
