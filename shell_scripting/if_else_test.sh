# Hello World Program in Bash Shell
#!/bin/bash
MY_SHELL="dd"
if [ ${MY_SHELL} = "csh" ] #spaces after sqaure brackets and the equal to sign, otherwise it becomes variable assignment
then
 echo "You seem to like the csh shell" 
elif [ ${MY_SHELL} = "bash" ]
then
 echo "You seem to like the bash shell"
fi
