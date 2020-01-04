#!/bin/bash

i=1
pkg="tensorflow"

read_selection() {
  local ans
  read -r ans
  ((ans > 0 && ans <= $#)) && printf "%s" "${!ans}"
}

tree=$(pactree -r "$pkg")
delete=("$pkg")
array=($(pactree -r -u -l "$pkg"))

for target in "${delete[@]}"; do
  for i in "${!array[@]}"; do
    if [[ ${array[i]} = $target ]]; then
      unset 'array[i]'
    fi
  done
done

printf "$tree"
printf '\n\n'
gettext 'Available packages:'
printf '\n'
for i in "${!array[@]}"; do 
  printf "%s)\t%s\n" "$i" "${array[$i]}"
done

# Expand tabs in the output of output_package to spaces as needed to create a
# table. Right align numerical columns 2 (index), 4 (epoch) and 6 (release).

printf '\n'
gettext 'select a package by number: '
choice=$(read_selection "${array[@]}")
# echo "${array[@]}"
# TODO pass this selection again to main loop

echo $choice
