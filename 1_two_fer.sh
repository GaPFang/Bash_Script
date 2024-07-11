#! /usr/bin/env bash
# https://exercism.org/tracks/bash/exercises/two-fer

main() {
    echo "One for ${1:-you}, one for me."
}

main "$@"