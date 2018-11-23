#!/bin/bash

lines_to_file () {

	cat $1 | wc -l
}


lines_count=$( lines_to_file $1 )

echo $lines_count
