#!/bin/bash


### Argument ONE should be the word, argument TWO should be the filename

### AN OLDER, LESS FUNCTIONAL WAY ###
#Defines the function
#stringfunc() {



#lines=$(grep -n $2 $1 | wc -l)

#echo "$2 appears $lines times within $1!"

#}

### END OLDER WAY ###

#This isn't necessary if there'll be a second script
#echo "What would you like to search for?"


#echo "In which file would you like to search?"

### This is unnecessary--the file can be an argument built-in to the script-call.
#read thefile

#We'll use arguments instead of the previously used files
#echo "Which file do you want to look through?"
#read file

whichlines=`cat $1 | grep -in $2 | cut -d \: -f 1 | awk 'BEGIN { ORS = " " } { print }'`

numoflines=`grep -ic $2 $1`

echo "You're looking at $1!" >> part1.output
echo "$2 appears on these lines: $whichlines, and in $numoflines lines total in $1!" >> part1.output

