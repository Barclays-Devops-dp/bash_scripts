#01. read command example 1
echo "Enter the name of the file to create"
read filename

touch $filename

#02.  READ PARAMETERS
#a) -p: for prompt
#b) -s: silent input - useful for passwords

read -p "Enter the name of the file to create:" filename

touch $filename


#b) -s: silent input - useful for passwords
read -sp "Enter your password: " yoursecret


echo "You entered $yoursecret"


# c)-n  : read specific number of characters
read -n 4 -p "Enter your PIN: " PIN
# read -n 4 -sp "Enter your PIN: " PIN  # can use with other paramters too

echo "You entered $PIN"


# d) -it : parameter for timeout
if read -t 5 -p "Enter your username: " username
then
    echo "Hello, ${username}"
else
   echo "Time out!"
fi


# e) read with a while loop to read a file.
while read line
do
  echo "Line: $line"
done < my_text_file.txt
