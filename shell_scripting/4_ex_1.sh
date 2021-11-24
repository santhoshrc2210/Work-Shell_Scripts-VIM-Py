#Write a shell script that consists of a function that displays the number of files in the present working
#directory. Name this function "file_count" and call it in your script. If you use a variable in your function,
#remember to make it a local variable



#!/bin/bash
function file_count() {
    local COUNT=$(ls |wc -l)
    echo "The number of files:$COUNT"
    
}

file_count
