# This is a comment
#./my_script.sh
echo Hello World             # Hello World
echo "Hello World"           # Hello       World
echo "Hello       World"     # Hello World
echo "Hello * World"         # Hello * World
echo Hello * World           # Hello p1_hello_world.sh README.md World
echo Hello      World        # Hello World
echo "Hello" World           # Hello World
echo Hello "     " World     # Hello       World
echo "Hello "*" World"       # Hello * World
echo `hello` world           # ./p1_hello_world.sh: line 12: hello: command not found
echo 'hello' world           # hello world