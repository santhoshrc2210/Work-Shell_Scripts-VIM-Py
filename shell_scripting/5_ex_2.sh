#Write a script that renames files based on the file extension. The script should prompt the user for a
#file extension. Next, it should ask the user what prefix to prepend to the file name(s). By default, the
#prefix should be the current date in YYYY-MM-DD format. If the user simply presses enter, the current
#date will be used. Otherwise, whatever the user entered will be used as the prefix. Next, it should
#display the original file name and the new name of the file. Finally, it should rename the file.


DATE=$(date +%F) #no space b/w + and %
read -p "Please enter a file extension:" FILE_EXTEN
read -p "Please enter a file prefix:" FILE_PREFIX
#function to rename files
function rename(){
    for FILE in "*.$FILE_EXTEN"
    do
    mv $FILE $1-$FILE
    echo "Renaming $FILE to $1-$FILE "
    done
}



if [ -z $FILE_PREFIX ]
then 
rename $DATE
elif [ -n $FILE_PREFIX ]
then
rename $FILE_PREFIX
fi
