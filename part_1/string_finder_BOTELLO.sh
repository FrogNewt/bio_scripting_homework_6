#!/bin/bash


echo "What string would you like to search for?"
read string

echo "What's the name of the file you'd like to search (without the extension)?"
read thefile

grep -n $string $thefile


