# -lt, -gt, -le and -ge comparisons are only designed for integers 
# The string comparisons, such as != will happily treat "5" as a string, 
# but there is no sensible way of treating "Hello" as an integer
# 
# you will have to check the contents of the variable before you test it - 
# maybe something like this:


echo -en "Please guess the magic number: "
read X
echo $X | grep "[^0-9]" > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
  # If the grep found something other than 0-9
  # then it's not an integer.
  echo "Sorry, wanted a number"
else
  # The grep found only 0-9, so it's an integer. 
  # We can safely do a test on it.
  if [ "$X" -eq "7" ]; then
    echo "You entered the magic number!"
  else
    echo "Wrong magic number, try again!"
  fi
fi

# grep [0-9] finds lines of text which contain digits (0-9) and possibly other characters,
# so the caret (^) in grep [^0-9] finds only those lines which don't consist only of numbers.

# The >/dev/null 2>&1 directs any output or errors to the special "null" device,
# instead of going to the user's screen