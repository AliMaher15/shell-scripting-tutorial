#!/bin/sh
#export MYVAR #don't need it if we sourced the script
echo "MYVAR is: $MYVAR"
MYVAR="hi there"
echo "MYVAR is: $MYVAR"
#to save variables in our shell and 
#not get deleted at the end of the file
# source the script in our shell 
# using . ./myscript.sh