#we have for and while loops in the Bourne shell.

## FOR Loops
echo "###################### for loop 1 ######################"
for i in 1 2 3 4 5
do
  echo "Looping ... number $i"
done
#
echo "###################### for loop 2 ######################"
for i in hello 1 * 2 goodbye #1 -> files in directory -> 2 -> goodbye
do
  echo "Looping ... i is set to $i"
done
#
echo "###################### for loop 3 ######################"
for i in hello "*" goodbye
do
  echo "Looping ... i is set to $i"
done
#
echo "###################### for loop 4 ######################"
for i in hello "\*" goodbye
do
  echo "Looping ... i is set to $i"
done
#
echo "###################### for loop 5 ######################"
X="1 2 3 4 5"
for i in $X
do
  echo "Looping ... i is set to $i"
done
#
echo "###################### for loop 6 ######################"
X="1 2 3 4 5"
for i in "${X}"
do
  echo "Looping ... i is set to $i"
done