#!/bin/sh
sed -i \
         -e 's/rgb(0%,0%,0%)/#1a1a1a/g' \
         -e 's/rgb(100%,100%,100%)/#d8dee8/g' \
    -e 's/rgb(50%,0%,0%)/#1a1a1a/g' \
     -e 's/rgb(0%,50%,0%)/#2979FF/g' \
 -e 's/rgb(0%,50.196078%,0%)/#2979FF/g' \
     -e 's/rgb(50%,0%,50%)/#1a1a1a/g' \
 -e 's/rgb(50.196078%,0%,50.196078%)/#1a1a1a/g' \
     -e 's/rgb(0%,0%,50%)/#d8dee8/g' \
	"$@"