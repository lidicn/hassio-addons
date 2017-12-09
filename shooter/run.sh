#!/bin/sh

/usr/games/fortune chinese | sed s/[[:space:]]//g | sed ':a;N;$!ba;s/\n/ /g' >/data/chinese.txt
/usr/games/fortune tang300 | sed s/[[:space:]]//g | sed ':a;N;$!ba;s/\n/ /g' | sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g">/data/tang300.txt
/usr/games/fortune song100 | sed s/[[:space:]]//g | sed ':a;N;$!ba;s/\n/ /g' | sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g">/data/song100.txt
/usr/games/fortune fortunes | sed ':label;N;s/\n/ /;b label' >/data/fortunes.txt
