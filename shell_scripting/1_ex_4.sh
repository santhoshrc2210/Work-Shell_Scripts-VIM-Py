Write a shell script to check to see if the file "/etc/shadow" exists. If it does exist, display "Shadow
passwords are enabled." Next, check to see if you can write to the file. If you can, display "You have
permissions to edit /etc/shadow." If you cannot, display "You do NOT have permissions to edit
/etc/shadow


#!/bin/bash
FILE_NAME="/etc/shadow"
if [ -e $FILE_NAME ]
then
 echo "Shadow passwords are enabled"
fi

if [ -w $FILE_NAME ] 
then
 echo "You have permissons to edit $FILE_NAME"
else #no then statement
 echo "You donot have permissons to edit $FILE_NAME"
fi
