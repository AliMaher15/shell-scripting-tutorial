#There is a simpler way of writing if statements: 
#The && and || commands give code to run if the result is true, or false, respectively.
# && : true
# || : false
# backlash \ : separate lines

[ $X -ne 0 ] && echo "X isn't zero" || echo "X is zero"

[ -f $X ] && echo "X is a file" || echo "X is not a file"

[ -n $X ] && echo "X is of non-zero length" || \
      echo "X is of zero length"