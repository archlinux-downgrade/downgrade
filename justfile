# Sources
scripts := `find bin -type f -executable -printf "%f "`

# Run tests
test:
  cram test

# Update version and package a tar.gz
package version:
  sed -i 's/^DOWNGRADE_VERSION=".*"/DOWNGRADE_VERSION="{{version}}"/' bin/downgrade
  just locales "{{version}}"
  just manpages
  tar cvfz downgrade-{{version}}.tar.gz bin conf completion doc locale

# Re-generate translations
locales version:
  for script_ in {{scripts}}; do \
    just _locales "$script_" "{{version}}"; \
  done

_locales exec version:
  xgettext \
    --from-code=utf-8 -L shell \
    --package-name={{exec}} \
    --package-version={{version}} \
    -o 'locale/{{exec}}.pot' bin/{{exec}}
  find \
    'locale/{{exec}}' \
    -name "*.po" \
    -exec msgmerge --update {} 'locale/{{exec}}.pot' \;

# Re-generate man-pages
manpages:
  ronn --roff doc/*.ronn
