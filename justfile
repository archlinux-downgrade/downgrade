# Run tests
test:
  cram test

# Update version and package a tar.gz
package version:
  sed -i 's/^DOWNGRADE_VERSION=".*"/DOWNGRADE_VERSION="{{v}}"/' bin/downgrade

  for script_ in bin/*; do \
    xgettext \
      --from-code=utf-8 -L shell \
      --package-name="$script_" \
      --package-version=v{{version}} \
      -o "locale/$script_.pot" bin/{{exec}}

    for po_ in "locale/$script_"/*.po; do
      msgmerge --update {} "$po_"
    done
  done

  ronn --roff doc/*.ronn

  tar cvfz downgrade-{{version}}.tar.gz bin conf completion doc locale
