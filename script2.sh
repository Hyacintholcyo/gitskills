#!/bin/sh
a=1000
if [ -n "$a" ];then
{
a=2000; echo $a
}
else
	:
fi
echo $a
