#!/bin/bash

# Command to execute
COMMAND="eject /dev/sr0"

# Infinite loop
while true; do
    # Generate a random sleep time between 1 and 60 seconds
    SLEEP_TIME=$((RANDOM % 1800 + 1))

   #echo $SLEEP_TIME seconds
    
    # Sleep for the random time
    sleep $SLEEP_TIME
    
    # Execute the command
    eval $COMMAND
done
