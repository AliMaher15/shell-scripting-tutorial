# The backtick is used to indicate that the enclosed text is to be executed as a command. 
# This is quite simple to understand. 
# First, use an interactive shell to read your full name from /etc/passwd:

# grep "^${USER}:" /etc/passwd | cut -d: -f5

# Now we will grab this output into a variable which we can manipulate more easily:

# MYNAME=`grep "^${USER}:" /etc/passwd | cut -d: -f5`
# echo $MYNAME

# the backtick simply catches the standard output from any command or set of commands
# we choose to run. It can also improve performance if you want to run a slow command
# or set of commands and parse various bits of its output:

# find / -name "*.html" -print | grep "/index.html$"
# find / -name "*.html" -print | grep "/contents.html$"

# This code could take a long time to run, and we are doing it twice!
# A better solution:

HTML_FILES=`find / -name "*.html" -print`
echo "$HTML_FILES" | grep "/index.html$"
echo "$HTML_FILES" | grep "/contents.html$"