# double quotes ""
echo "Hello       World"
#So how do we display: Hello    "World" ?
echo "Hello   \"World\""
# asterisk *
echo *md   #print all .md files in directory
echo "*"   #print * 
echo "*md" #print *md
# characters still interpreted inside double quotes
# ", $, `, \
#The backslash (\) character is used to mark these special characters
# so that they are not interpreted by the shell
echo "A quote is \", backslash is \\, backtick is \`."
X=5
echo "A few spaces are    and dollar is \$. \$X is ${X}."