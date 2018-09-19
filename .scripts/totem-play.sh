#!/bin/bash
# CD to the dir we are in.
cd "$(dirname "${1}")";
# Copy the params to an array
ARRAY=("$@");
echo "${ARRAY[@]}";
# set a delimeter
IFS=$'\n';
# Sort the array
SORTED=($(sort <<<"${ARRAY[*]}"));
# Remove all lastfiles
rm -rf *.lastfile;
touch "${SORTED[-1]}.lastfile";
# For every value in the sorted array, run totem --enqueue
for i in "${SORTED[@]}"
do
    :
    echo $i;
    totem --enqueue $i&
    sleep 3s;
done;
