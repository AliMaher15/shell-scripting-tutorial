#!/bin/sh
echo "What is your name?"
read USER_NAME
echo "Hello $USER_NAME"
echo "I will create you a file called ${USER_NAME}_file.txt"
touch "${USER_NAME}_file.txt"
#The shell now knows that we are referring 
#to the variable USER_NAME and that we want it suffixed with "_file"
# the quotes after touch helps if the user entered Steve Parker with space
# it would generate 2 files (Steve Parker_file) without it