PREFIX       ?= /usr/local
LOCALEPREFIX ?= $(PREFIX)/share/locale
MANPREFIX    ?= $(PREFIX)/share/man
PANDOC       ?= $(shell which pandoc)
XDGPREFIX    ?= /etc/xdg
SCRIPTS      ?= $(shell find bin -type f -executable -printf "%f\n")
MANPAGES     ?= $(shell find doc -type f -name "*.md")

.PHONY: setup
setup:
	command -v cram   || aurget cram
	command -v vbump  || aurget vbump-git
	command -v pandoc || stack install pandoc

locale/%.pot: bin/%
	xgettext \
		--from-code=utf-8 -L shell \
		--package-name="$*" \
		--copyright-holder=$(AUTHOR) \
		-o "$@" "$<"
	find "locale/$*" -name "*.po" -exec msgmerge --update {} "$@" \;

.PHONY: locale
locale: $(SCRIPTS:%=locale/%.pot)

doc/%: doc/%.md
	$(PANDOC) --standalone --to man "$<" -o "$@"

.PHONY: man
man: $(MANPAGES:%.md=%)

.PHONY: test
test:
	cram test

.PHONY: install
install:
	install -Dm644 conf/downgrade.conf "$(DESTDIR)$(XDGPREFIX)/downgrade/downgrade.conf"
	install -Dm644 doc/downgrade.8 "$(DESTDIR)$(MANPREFIX)/man8/downgrade.8"
	install -Dm644 doc/pacignore.8 "$(DESTDIR)$(MANPREFIX)/man8/pacignore.8"
	for script_ in $(SCRIPTS); do \
	  install -Dm755 "bin/$$script_" "$(DESTDIR)$(PREFIX)/bin/$$script_"; \
	  install -Dm644 "completion/$$script_/bash" "$(DESTDIR)$(PREFIX)/share/bash-completion/completions/$$script_"; \
	  install -Dm644 "completion/$$script_/zsh" "$(DESTDIR)$(PREFIX)/share/zsh/site-functions/_$${script_}"; \
	  install -Dm644 "completion/$$script_/fish" "$(DESTDIR)$(PREFIX)/share/fish/vendor_completions.d/$${script_}.fish"; \
	done
	for po_file_ in locale/**/*.po; do \
	  locale_="$$(basename "$$po_file_" .po)"; \
	  script_="$$(basename "$$(dirname "$$po_file_")")"; \
	  mkdir -p "$(DESTDIR)$(LOCALEPREFIX)/$$locale_/LC_MESSAGES/"; \
	  msgfmt "$$po_file_" -o "$(DESTDIR)$(LOCALEPREFIX)/$$locale_/LC_MESSAGES/$${script_}.mo"; \
	done

.PHONY: uninstall
uninstall:
	$(RM) "$(DESTDIR)$(XDGPREFIX)/downgrade/downgrade.conf" \
	  "$(DESTDIR)$(MANPREFIX)/man8/downgrade.8" \
	  "$(DESTDIR)$(MANPREFIX)/man8/pacignore.8"
	for script_ in $(SCRIPTS); do \
	  $(RM) "$(DESTDIR)$(PREFIX)/bin/$$script_" \
	    "$(DESTDIR)$(PREFIX)/share/bash-completion/completions/$$script_" \
	    "$(DESTDIR)$(PREFIX)/share/zsh/site-functions/_$${script_}" \
	    "$(DESTDIR)$(PREFIX)/share/fish/vendor_completions.d/$${script_}.fish" \
	    "$(DESTDIR)$(LOCALEPREFIX)"/*/"LC_MESSAGES/$${script_}.mo"; \
	done

VERSION ?= $(shell sed '/^DOWNGRADE_VERSION="\([^"]*\)".*$$/!d; s//\1/' bin/downgrade)
AUR_RELEASE_OPTIONS ?=

.PHONY: release
release: test
	[ -n "$(VERSION)" ]
	git tag -s -m "v$(VERSION)" "v$(VERSION)"
	git push --follow-tags
	aur-release $(AUR_RELEASE_OPTIONS) downgrade "$(VERSION)"
