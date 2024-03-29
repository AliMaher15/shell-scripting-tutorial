# The first set of variables we will look at are $0 .. $9 and $#.
# The variable $0 is the basename of the program as it was called.

# $1 .. $9 are the first 9 additional parameters the script was called with.

# The variable $@ is all parameters $1 .. whatever.

# The variable $*, is similar, but does not preserve any whitespace, and quoting,
# so "File with spaces" becomes "File" "with" "spaces".

# As a general rule, use $@ and avoid $*.
# $# is the number of parameters the script was called with.

#!/bin/sh
echo "I was called with $# parameters"
echo "My name is $0"
echo "My name is `basename $0`" # using external utility basename 
echo "My first parameter is $1"
echo "My second parameter is $2"
echo "All parameters are $@"

# try calling it as ./var3.sh hello world earth