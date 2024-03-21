# printing default name

# could be done better using a shell variable feature.
# By using curly braces and the special ":-" usage, .
# you can specify a default value to use if the variable is unset
echo -en "What is your name [ `whoami` ] "
read myname
echo "Your name is : ${myname:-`whoami`}"
# This could be considered a special case - 
# we're using the output of the whoami command, 
# which prints your login name (UID). 
# The more canonical example is to use fixed text, like this:
echo "Your name is : ${myname:-John Doe}"

# There is another syntax, ":=", which sets the variable to the default if it is undefined:
echo "Your name is : ${myname:=John Doe}"
# This technique means that any subsequent access to the $myname variable will always get a value, 
# either entered by the user, or "John Doe" otherwise.