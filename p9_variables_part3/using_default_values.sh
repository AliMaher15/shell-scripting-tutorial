# Consider the following code snippet which prompts the user for input, 
# but accepts defaults:
#!/bin/sh
echo -en "What is your name [ `whoami` ] "
# Passing the "-en" to echo tells it not to add a linebreak (for bash and csh).
# For Dash, Bourne and other compliant shells, you use a "\c" at the end of the line, instead.
read myname
if [ -z "$myname" ]; then
  myname=`whoami`
fi
echo "Your name is : $myname"