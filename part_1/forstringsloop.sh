#!/bin/bash

echo "Which word would you like to search for?"
read word

for i in ~/homework_6/part_2/book_pages/*.txt; do
~/homework_6/part_1/string_finder_BOTELLO.sh $i $word
done

