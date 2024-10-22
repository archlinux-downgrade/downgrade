# Sources
scripts := `find bin -type f -executable -printf "%f "`
manpages := `find doc -type f -name '*.md' -printf "%f "`

# Executables
pandoc := `which pandoc`

# Metadata
version := 'v' + `./bin/downgrade --version`

# Run tests
test:
  cram test

# Re-generate translations
locales:
  for script_ in {{scripts}}; do \
    just _locales "$script_"; \
  done

_locales exec:
  xgettext \
    --from-code=utf-8 -L shell \
    --package-name={{exec}} \
    --package-version={{version}} \
    -o 'locale/{{exec}}.pot' bin/{{exec}}
  find \
    'locale/{{exec}}' \
    -name "*.po" \
    -exec msgmerge --update {} 'locale/{{exec}}.pot' \;
  sed -i '\
    /^# Copyright.*$/d; \
    s/^\(# This file is\).*$/\1 put in the public domain./\
    ' \
    'locale/{{exec}}.pot'

# Re-generate man-pages
manpages:
  for manpage_ in {{manpages}}; do \
    just _manpage "$manpage_"; \
  done

_manpage md:
  {{pandoc}} \
    --standalone \
    --to man \
    --output "doc/$(echo '{{md}}' | sed 's/.md$//')" \
    'doc/{{md}}'

# TODO
# AUR_RELEASE_OPTIONS ?=

# .PHONY: release
# release: test
# 	[ -n "$(VERSION)" ]
# 	git tag -s -m "v$(VERSION)" "v$(VERSION)"
# 	git push --follow-tags
# 	aur-release $(AUR_RELEASE_OPTIONS) downgrade "$(VERSION)"
