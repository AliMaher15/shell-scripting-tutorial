# with a simple script, the function is simply declared in the same file as it is called.

# However, when writing a suite of scripts,
# it is often easier to write a "library" of useful functions,
# and source that file at the start of the other scripts which use the functions. 

#example:
. ./library.sh
# write this at the start of the script to take all functions

# functions: it returns a single value, and does not output anything.
# procedure: does not return a value, but may produce output.

# A shell function may do neither, either or both. 
# It is generally accepted that in shell scripts they are called functions.

# A function may return a value in one of four different ways:

#    -Change the state of a variable or variables
#    -Use the exit command to end the shell script
#    -Use the return command to end the function, 
#     and return the supplied value to the calling section of the shell script
#    -echo output to stdout, which will be caught by the caller just as c=`expr $a + $b` is caught

