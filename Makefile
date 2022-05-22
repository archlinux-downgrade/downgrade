PREFIX       ?= /usr/local
LOCALEPREFIX ?= $(PREFIX)/share/locale
MANPREFIX    ?= $(PREFIX)/share/man
PANDOC       ?= $(shell which pandoc)
XDGPREFIX    ?= /etc/xdg
SCRIPTS      ?= $(shell find ./bin -type f -executable -printf "%f\n")
MANPAGES     ?= $(shell find ./doc -type f -name "*.md")

.PHONY: setup
setup:
	command -v cram   || aurget cram
	command -v vbump  || aurget vbump-git
	command -v pandoc || stack install pandoc

locale/%.pot: bin/%
	xgettext \
		--from-code=utf-8 -L shell \
		--package-name=$* \
		--copyright-holder=$(AUTHOR) \
		-o $@ $<
	find ./locale/$* -name "*.po" -exec msgmerge --update {} $@ \;

.PHONY: locale
locale: $(SCRIPTS:%=locale/%.pot)

doc/%: doc/%.md
	$(PANDOC) --standalone --to man $< -o $@

.PHONY: man
man: $(MANPAGES:%.md=%)

.PHONY: test
test:
	cram test

.PHONY: install
install:
	install -Dm644 conf/downgrade.conf $(DESTDIR)$(XDGPREFIX)/downgrade/downgrade.conf
	install -Dm644 doc/downgrade.8 $(DESTDIR)$(MANPREFIX)/man8/downgrade.8
	install -Dm644 doc/pacignore.8 $(DESTDIR)$(MANPREFIX)/man8/pacignore.8
	for script in $(SCRIPTS); do \
	  install -Dm755 bin/$$script $(DESTDIR)$(PREFIX)/bin/$$script; \
	  install -Dm644 completion/$$script/bash $(DESTDIR)$(PREFIX)/share/bash-completion/completions/$$script; \
	  install -Dm644 completion/$$script/zsh $(DESTDIR)$(PREFIX)/share/zsh/site-functions/_$${script}; \
	  install -Dm644 completion/$$script/fish $(DESTDIR)$(PREFIX)/share/fish/vendor_completions.d/$${script}.fish; \
	done
	for po_file in locale/**/*.po; do \
	  locale="$$(basename "$$po_file" .po)"; \
	  script="$$(basename "$$(dirname "$$po_file")")"; \
	  mkdir -p "$(DESTDIR)$(LOCALEPREFIX)/$$locale/LC_MESSAGES/"; \
	  msgfmt "$$po_file" -o "$(DESTDIR)$(LOCALEPREFIX)/$$locale/LC_MESSAGES/$${script}.mo"; \
	done

.PHONY: uninstall
uninstall:
	$(RM) $(DESTDIR)$(XDGPREFIX)/downgrade/downgrade.conf \
	  $(DESTDIR)$(MANPREFIX)/man8/downgrade.8 \
	  $(DESTDIR)$(MANPREFIX)/man8/pacignore.8
	for script in $(SCRIPTS); do \
	  $(RM) $(DESTDIR)$(PREFIX)/bin/$$script \
	    $(DESTDIR)$(PREFIX)/share/bash-completion/completions/$$script \
	    $(DESTDIR)$(PREFIX)/share/zsh/site-functions/_$${script} \
	    $(DESTDIR)$(PREFIX)/share/fish/vendor_completions.d/$${script}.fish \
	    $(DESTDIR)$(LOCALEPREFIX)/*/LC_MESSAGES/$${script}.mo; \
	done

VERSION ?= $(shell sed '/^DOWNGRADE_VERSION="\([^"]*\)".*$$/!d; s//\1/' downgrade)
AUR_RELEASE_OPTIONS ?=

.PHONY: release
release: test
	[ -n "$(VERSION)" ]
	git tag -s -m v$(VERSION) v$(VERSION)
	git push --follow-tags
	aur-release $(AUR_RELEASE_OPTIONS) downgrade "$(VERSION)"
