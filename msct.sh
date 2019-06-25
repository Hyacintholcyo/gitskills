#!/bin/sh
mHelp(){
cat <<HELP
This is a generic command line parser demo.
USAGE EXAMPLE: 
	msct.sh -l hello -f world -- arg1 arg2
ATTENTION: 
	1) If you need help,input -h first.
	2) Arguments must be placed after '--'.
HELP
	exit 0
}
while [ -n "$1" ];do
	case $1 in 
		-h) mHelp;shift 1;;
		-f) opt_f=$2;shift 2;;
		-l) opt_l=$2;shift 2;;
		--) shift;break;;
		-*) echo "error:no such option $1. -h for help";exit 1;;
		*) break;;
	esac
done
if [ -n "$opt_f" ];then
	echo "opt_f is $opt_f"
else
	:
fi
if [ -n "$opt_l" ];then
	echo "opt_l is $opt_l"
else
	:
fi
if [ -n "$1" ];then
	echo "first arg is $1"
else
	:
fi
if [ -n "$2" ];then
	echo "second arg is $2"
else
	:
fi
