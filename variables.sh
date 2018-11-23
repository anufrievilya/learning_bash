#!/bin/bash

set_local_var () {

	local var1='local var 1'
	echo "This local var $var1, var2 $var2"
	var1='change 1 again'
	var2='change 2 again'
}

var1='blobalxxxxxxxxxxxxxx1'
var2='globalxxxxxxxxxxxxxxxxx 2'

echo "This global var: $var1 , var2  $var2"

set_local_var

echo "This var after call function var1: $var1 , var2:  $var2"
