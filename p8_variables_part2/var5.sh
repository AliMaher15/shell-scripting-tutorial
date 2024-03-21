# The other two main variables set for you by the environment are $$ and $!. 
# These are both process numbers.

# The $$ variable is the PID (Process IDentifier) of the currently running shell.
# This can be useful for creating temporary files, such as /tmp/my-script.$$ 
# which is useful if many instances of the script could be run at the same time, 
# and they all need their own temporary files.

# The $! variable is the PID of the last run background process. 
# This is useful to keep track of the process as it gets on with its job

# Another interesting variable is IFS. 
# This is the Internal Field Separator. 
# The default value is SPACE TAB NEWLINE, 
# but if you are changing it, it's easier to take a copy, as shown:
#!/bin/sh
old_IFS="$IFS"
IFS=: # new separator is :
echo "Please input some data separated by colons ..."
read x y z
IFS=$old_IFS
echo "x is $x y is $y z is $z"