# curly brackets around a variable avoid confusion
foo=sun
echo $fooshine     # $fooshine is undefined
echo ${foo}shine   # displays the word "sunshine"


# We can deal with issues of variables being undefined or null 
# (in the shell, there's not much difference between undefined and null).