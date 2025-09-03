PREFIX       ?= /usr/local
LOCALEPREFIX ?= $(PREFIX)/share/locale
MANPREFIX    ?= $(PREFIX)/share/man
SCRIPTS      ?= $(shell find bin -type f -executable -printf "%f\n")
XDGPREFIX    ?= /etc/xdg

.PHONY: install
install:
	install -Dm644 conf/downgrade.conf "$(DESTDIR)$(XDGPREFIX)/downgrade/downgrade.conf"
	install -Dm644 doc/downgrade.8 "$(DESTDIR)$(MANPREFIX)/man8/downgrade.8"
	install -Dm644 doc/downgrade.conf.5 "$(DESTDIR)$(MANPREFIX)/man5/downgrade.conf.5"
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
	  "$(DESTDIR)$(MANPREFIX)/man5/downgrade.conf.5" \
	  "$(DESTDIR)$(MANPREFIX)/man8/downgrade.8" \
	  "$(DESTDIR)$(MANPREFIX)/man8/pacignore.8"
	for script_ in $(SCRIPTS); do \
	  $(RM) "$(DESTDIR)$(PREFIX)/bin/$$script_" \
	    "$(DESTDIR)$(PREFIX)/share/bash-completion/completions/$$script_" \
	    "$(DESTDIR)$(PREFIX)/share/zsh/site-functions/_$${script_}" \
	    "$(DESTDIR)$(PREFIX)/share/fish/vendor_completions.d/$${script_}.fish" \
	    "$(DESTDIR)$(LOCALEPREFIX)"/*/"LC_MESSAGES/$${script_}.mo"; \
	done
