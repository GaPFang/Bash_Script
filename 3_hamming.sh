#!/usr/bin/env bash

main() {
    if [ $# != 2 ]; then
        echo "Usage: hamming.sh <string1> <string2>"
        exit 1
    fi
    dist_hamming=0
    str1=$1
    str2=$2
    length1=${#str1}
    length2=${#str2}
    if [ "$length1" != "$length2" ]; then
        echo "strands must be of equal length"
        exit 1
    fi
    for ((i = 0; i < length1; i++)); do
        if [ "${str1:i:1}" != "${str2:i:1}" ]; then
            ((dist_hamming += 1))
        fi
    done
    echo "${dist_hamming}"
}

main "$@"