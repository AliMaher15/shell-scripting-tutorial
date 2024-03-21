# $# and $1 .. $9 are set automatically by the shell.
# We can take more than 9 parameters by using the shift 

#!/bin/sh
while [ "$#" -gt "0" ]
do
  echo "\$1 is $1"
  shift
done 

# This script keeps on using shift until $# is down to zero, 
# at which point the list is empty.

################################################
# Another special variable is $?. 
# This contains the exit value of the last run command.
/usr/local/bin/my-command
if [ "$?" -ne "0" ]; then
  echo "Sorry, we had a problem there!"
fi
# will attempt to run /usr/local/bin/my-command which should exit with a value of zero
# if all went well, or a nonzero value on failure. 
# We can then handle this by checking the value of $? after calling the command. 
# This helps make scripts robust and more intelligent.