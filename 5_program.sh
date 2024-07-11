#!/usr/bin/env bash

main1() {
    str=${1,,}
    len=${#str}
    ((len < 26)) && { echo false; exit; }
    # if [ "$len" -lt "26" ]; then
    #     echo false
    #     exit
    # fi
    for alphabet in {a..z}; do
        flag=false
        for ((i=0; i<len; i++)); do
            [ "${str:i:1}" = "$alphabet" ] && { flag=true; break; }
            # if [ "${str:i:1}" = "$alphabet" ]; then
            #     flag=true
            #     break
            # fi
        done
        [ $flag == "false" ] && { echo false; exit; }
        # if [ $flag = false ]; then
        #     echo false
        #     exit
        # fi
    done
    echo true
}

# --------------------------------------------------------

main2() {
    str=${1,,}
    for alphabet in {a..z}; do
        echo "$str" | grep -q "$alphabet" || { echo false; exit; }
    done
    echo true
}

# --------------------------------------------------------

main3() {
    str=${1,,}
    uniq_count=$(echo "$str" | grep -o "[a-z]" | sort -u | wc -l)
    ((uniq_count == 26)) && echo true || echo false
}

main3 "$@"