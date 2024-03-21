# Functions cannot change the values they have been called with, either 
# this must be done by changing the variables themselves, 
# not the parameters as passed to the script.
# An example shows this more clearly

#!/bin/sh

myfunc()
{
  echo "\$1 is $1"
  echo "\$2 is $2"
  # cannot change $1 - we'd have to say:
  # 1="Goodbye Cruel"
  # which is not a valid syntax. However, we can
  # change $a:
  a="Goodbye Cruel"
}

### Main script starts here 

a=Hello
b=World
myfunc $a $b
echo "a is $a"
echo "b is $b"
echo "Message: "$a" "$b""