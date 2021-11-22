Write a shell script that prompts the user for a name of a file or directory and reports if it is a regular file,
a directory, or another type of file.


read -p "Enter file/directory name:" FILE_NAME

if [ -d "$FILE_NAME" ] #the variable need to be in double quotes
then
echo "It is a directory"
elif [ -f "$FILE_NAME" ]
then 
echo "It is a file"
elif [ -e "$FILE_NAME" ]
then
echo "It is another type of file"
fi
