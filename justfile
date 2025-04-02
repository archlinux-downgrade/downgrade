# Run tests
test:
  cram test

# Build and package dist
dist version:
  just dist-bin "{{version}}"
  just dist-locale
  just dist-manpages
  tar cvfz downgrade-{{version}}.tar.gz \
    --transform 's/^dist/downgrade-{{version}}/' dist

# Create dist/bin
dist-bin version:
  mkdir -p dist/bin
  m4 -D '__VERSION__={{version}}' < src/downgrade > dist/bin/downgrade
  chmod +x dist/bin/downgrade
  cp -v src/pacignore dist/bin/

# Create dist/locale
dist-locale:
  for script_ in src/*; do \
    just dist-locale-one "$(basename "$script_")"; \
  done

# Create dist/locale/{{exec}}/*.po
dist-locale-one exec:
  just update-locales '{{exec}}'
  mkdir -p 'dist/locale/{{exec}}'
  cp -v "locale/{{exec}}"/*.po 'dist/locale/{{exec}}/'

# Create dist/doc/ from doc/
dist-manpages:
  ronn --roff doc/*.ronn
  mkdir -p dist/doc
  find doc \
    -type f \
    -not -name '*.ronn' \
    -not -name 'index.txt' \
    -exec cp -v {} dist/doc \;

# Clean up from building dist
dist-clean:
  git clean -fdx dist doc locale
  rm -fv downgrade-*.tar.gz

# Update locale/{{exec}}/*.po files
update-locales exec:
  xgettext --from-code=utf-8 -L shell -o 'locale/{{exec}}.pot' 'src/{{exec}}'
  find 'locale/{{exec}}' -name "*.po" -exec \
    msgmerge --update {} 'locale/{{exec}}.pot' \;
