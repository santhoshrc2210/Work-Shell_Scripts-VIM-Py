#Modify the script from the previous exercise. Make the "file_count" function accept a directory as an
#argument. Next, have the function display the name of the directory followed by a colon. Finally, display
#the number of files to the screen on the next line.


function file_count() {
    read -p "Name of directory:" NAME
    #check if the  directory exists
    if [ -d $NAME ]
    then
    echo "$NAME :"
    COUNT=$(ls $NAME |wc -l)
    echo "Number of files : $COUNT"
    #if it does not exist
    else
    return 1
    fi
}

file_count 
