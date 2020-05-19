#! /bin/bash

for i in $(ls | grep "png")
do
	zbarimg $i
done 