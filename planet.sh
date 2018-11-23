#!/bin/bash

get_planet () {

	echo $1
#	return 5
	return $?
	echo $?

}


get_planet Mars
get_planet Zeml
