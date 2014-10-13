PREFIX    ?= /usr/local
MANPREFIX ?= $(PREFIX)/share/man

potfile: downgrade
	xgettext \
		--from-code=utf-8 -L shell \
		--package-name=downgrade \
		--copyright-holder=$(AUTHOR) \
		-o downgrade.pot ./downgrade

downgrade.8: doc/downgrade.8.md
	kramdown-man doc/downgrade.8.md > doc/downgrade.8
	[ -s doc/downgrade.8 ]

man: downgrade.8

test:
	cram test

install:
	install -Dm755 downgrade $(DESTDIR)/$(PREFIX)/bin/downgrade
	install -Dm644 doc/downgrade.8 $(DESTDIR)/$(MANPREFIX)/man8/downgrade.8
	install -Dm644 completion/bash $(DESTDIR)/$(PREFIX)/bash_completion.d/downgrade
	install -Dm644 completion/zsh $(DESTDIR)/$(PREFIX)/share/zsh/site-functions/_downgrade

uninstall:
	$(RM) $(DESTDIR)/$(PREFIX)/bin/downgrade \
	  $(DESTDIR)/$(MANPREFIX)/man8/downgrade.8 \
	  $(DESTDIR)/$(PREFIX)/bash_completion.d/downgrade \
	  $(DESTDIR)/$(PREFIX)/share/zsh/site-functions/_downgrade

.PHONY: test install uninstall
