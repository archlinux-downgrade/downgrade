#!/bin/bash
locales="lt" #locales separated by space
for i in $locales
	do
		sudo msgfmt $i.po -o /usr/share/locale/$i/LC_MESSAGES/downgrade.mo
	done
