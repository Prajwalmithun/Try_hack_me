#! /bin/bash

input="files_names.txt" 
while IFS= read -r line
do 
	find / -type f -name $line >> results.txt
done < $input