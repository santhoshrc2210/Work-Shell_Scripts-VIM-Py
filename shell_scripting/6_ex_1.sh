#Create a startup script for an application called sleep-walking-server, which is provided below. The
#script should be named sleep-walking and accept "start" and "stop" as arguments. If anything other
#than "start" or "stop" is provided as an argument, display a usage statement: "Usage sleep-walking
#start|stop" and terminate the script with an exit status of 1.
#To start sleep-walking-server, use this command: "/tmp/sleep-walking-server &"
#To stop sleep-walking-server, use this command: "kill $(cat /tmp/sleep-walking-server.pid)"

#!/bin/bash
read -p "Enter start/stop:" KEY_WORD    
case "$KEY_WORD" in
  start)
  source /tmp/sleep-walking-server &
  ;; #once the program reaches this line it will exit this loop
  stop)
  kill $(cat /tmp/sleep-walking-server.pid)
  ;;
  *) #wildcard matches any character, but this statement will be executed only if the first two are not
  echo "Usage sleep-walking start|stop"
  exit 1
  ;;
esac  
