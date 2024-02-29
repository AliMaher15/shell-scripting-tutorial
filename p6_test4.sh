# This code will keep asking for input until you hit RETURN (X is zero length)
X=0
while [ -n "$X" ]
do
  echo "Enter some text (RETURN/Enter/Space to quit)"
  read X
  echo "You said: $X"
done
# This can be tidied up with another test within the loop:
X=0
while [ -n "$X" ]
do
  echo "Enter some text (RETURN to quit)"
  read X
  if [ -n "$X" ]; then
    echo "You said: $X"
  fi
done