#example showing how to give inputs to a function to operate on

#!/bin/bash
function hello(){
    for NAME in $@
    do
    echo "Hello! $NAME"
    done
}
hello Jason Dan Ryan
