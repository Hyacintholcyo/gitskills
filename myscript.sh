#!/bin/sh
echo "What is your favourite OS?" 
select var in "Linux" "Qnu Hurd" "HreeBSD" "Yther"; do 
	break 
done 
echo "You have selected $var"
	
