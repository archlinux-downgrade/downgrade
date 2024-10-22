# Sources
scripts := `find bin -type f -executable -printf "%f "`
manpages := `find doc -type f -name '*.md' -printf "%f "`

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
  pandoc \
    --standalone \
    --to man \
    --output "doc/$(echo '{{md}}' | sed 's/.md$//')" \
    'doc/{{md}}'

release:
  git tag --sign --message '{{version}}' '{{version}}'
  git push --follow-tags
  aur-release downgrade '{{version}}'
