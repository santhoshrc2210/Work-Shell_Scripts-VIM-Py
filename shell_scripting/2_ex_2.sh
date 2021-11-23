Write a shell script that accepts a file or directory name as an argument. Have the script report if it is a
regular file, a directory, or another type of file. If it is a regular file, exit with a 0 exit status. If it is a
directory, exit with a 1 exit status. If it is some other type of file, exit with a 2 exit status


read -p "Enter file/directory name:" FILE_NAME
if [ -d $FILE_NAME ]
then
exit 1
elif  [ -f $FILE_NAME ]
then
exit 0
elif  [ -e $FILE_NAME ]
then
exit 2
fi
