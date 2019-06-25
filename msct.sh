#!/bin/sh
output1()
{
echo "It's function output1." 
}
output2()
{
echo "It's function output2." 
}
echo "Choose your function" 
select var in "output1" "output2";do 
	break 
done 
case $var in 
	"output1"*) 
	output1;;
	"output2"*)
	output2;;
	*) echo "ERROR"
esac
