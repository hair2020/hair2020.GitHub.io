#!/bin/bash
file1=$1

if [ -f "$file1" ]; then
    time = `date +%Y%m%d%H%M%S`
    file2 = "$file1""_""$time"

    echo "$file1 will be renamed to $file2"
    mv $file1 $file2
fi

ifconfig ens33 | grep netmask | gawk '{print $2}' > file1

exit 0