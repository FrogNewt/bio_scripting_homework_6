#!/bin/bash

while getopts ":h" opt;
do
    case $opt in
        h)
            echo "You're getting help!  Give three arguments in succession (e.g. filename arg1 arg2 arg3) and you'll see them echoed in reverse-order." >&2
            exit
            ;;
        :)
            echo "You should give three arguments instead of the thing you're doing!"
    esac
done

echo $3
echo $2
echo $1


