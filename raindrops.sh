#!/usr/bin/env bash
main() {
    number=$1
    output=""
    if [ $((number % 3)) == 0  ]; then
        output+="Pling"
    fi
    if [ $((number % 5)) == 0  ]; then
        output+="Plang"
    fi
    if [ $((number % 7)) == 0  ]; then
        output+="Plong"
    fi
    # if [ $output == "" ]; then
    if [ -z $output ]; then
        echo $number
    else
        echo $output
    fi
}
main "$@"