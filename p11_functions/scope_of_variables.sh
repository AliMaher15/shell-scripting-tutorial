# Basically, there is no scoping, other than the parameters ($1, $2, $@, etc).

#!/bin/sh

myfunc()
{
  echo "I was called as : $@"
  x=2
}

### Main script starts here 

echo "Script was called with $@"
x=1
echo "x is $x"
myfunc 1 2 3
echo "x is $x"

# The variable x, is effectively a global variable - 
# myfunc changed it, and that change is still effective when control returns to the main script.

# A function will be called in a sub-shell if its output is piped somewhere else 
# that is, "myfunc 1 2 3 | tee out.log" will still say "x is 1" the second time around.
echo
echo "pipe function output in log file"
x=1
echo "x is $x"
myfunc 1 2 3 | tee out.log
echo "x is $x"

# This is because a new shell process is called to pipe myfunc(). 
# This can make debugging very frustrating

