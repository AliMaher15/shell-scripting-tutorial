# The case statement saves going through
# a whole set of if .. then .. else statements. Its syntax is really quite simple:

# The options we understand are listed and followed by a right bracket, as hello) and bye).
# This means that if INPUT_STRING matches hello then that section of code is executed,
# up to the double semicolon.

# The third option here, the *), 
# is the default catch-all condition;
# it is not required, but is often useful for debugging purposes
# even if we think we know what values the test variable will have.

echo "Please talk to me ..."
while :
do
  read INPUT_STRING
  case $INPUT_STRING in
	hello)
		echo "Hello yourself!"
		;;
	bye)
		echo "See you again!"
		break # break loop, jump after done
		# can use "exit" to exit script completely
		;;
	*)
		echo "Sorry, I don't understand"
		;;
  esac # case backwards
done # end while loop
echo 
echo "That's all folks!"